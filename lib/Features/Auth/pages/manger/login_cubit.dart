// import 'package:bloc/bloc.dart';
import 'package:ecommers/Features/Auth/data/model/user_model.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginCubit extends Cubit<LoginStaes> {
  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);
  IconData password = Icons.remove_red_eye_sharp;
  bool ispassword = true;
  void changePasswordIcon() {
    ispassword = !ispassword;
    password =
        ispassword ? Icons.remove_red_eye_sharp : Icons.remove_red_eye_outlined;
    emit(ChangePassword());
  }

  Future<void> createUser({
    required String email,
    required String password,
    required String phone,
    required String name,
  }) async {
    emit(LoadingRegisterUser());
    print("$email $password $phone $name");

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.uid);
      createNewUserInFireStor(
          email: email,
          name: name,
          password: password,
          phone: phone,
          Uid: value.user!.uid);
      emit(SuccRegisterUser());
    }).catchError((onError) {
      print(onError);
      emit(eroorRegisterUser());
    });
  }
}

void createNewUserInFireStor(
    {required String email,
    required String name,
    required String password,
    required String phone,
    required String Uid}) {
  UserModel? model = UserModel(
      email: email, name: name, password: password, phone: phone, Uid: Uid);
  FirebaseFirestore.instance
      .collection('users')
      .doc(Uid)
      .set(model.tOMap())
      .then((value) {
    print("Don In cloud");
  });
}
