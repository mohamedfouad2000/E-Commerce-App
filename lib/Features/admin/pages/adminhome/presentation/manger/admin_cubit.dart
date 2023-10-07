import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_states.dart';
import 'package:ecommers/Features/admin/pages/create%20prodect/data/models/create_product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class AdminCubit extends Cubit<AdminStates> {
  AdminCubit() : super(InitAdminStates());
  static AdminCubit get(context) => BlocProvider.of(context);
  int msqEroor = 0;
  void change() {
    msqEroor = msqEroor == 1 ? 0 : 1;
    emit(ChangeMsq());
  }

  String dropdownValue = 'fruits';
  void dropDownFun({required String? value}) {
    dropdownValue = value!;
    emit(ChangeValueOfDropDown());
  }

  Future<void> createProduct({
    required String title,
    required String price,
    required String cate,
    required String des,
    required String img,
  }) async {
    emit(CreateProductLoading());
    CreateProductModel model = CreateProductModel(
        cate: cate, price: price, title: title, des: des, img: img);
    FirebaseFirestore.instance
        .collection("products")
        .doc()
        .set(model.toMap())
        .then((value) {
      emit(CreateProductSucc());

      print("Done ya Man");
    }).catchError((onError) {
      print(onError);
      emit(CreateProductEroor());
    });
  }

  List<String> cat = [];
  Future<void> getCategory() async {
    emit(getCatLoading());
    cat = [];
    FirebaseFirestore.instance.collection("Category").get().then((value) {
      for (var element in value.docs) {
        print(element['name']);
        cat.add(element['name']);
      }
    }).then((value) {
      emit(getCatSucc());
    }).catchError((onError) {
      emit(getCatEroor());
    });
  }

  ImagePicker picker = ImagePicker();
  var img;
  Future<void> setImage({required ImageSource i}) async {
    emit(setImageeLoad());

    var pickedfile = await picker.pickImage(source: i);
    if (pickedfile != null) {
      img = File(pickedfile.path);
      print("object");
      print(pickedfile.path);
      emit(setImageeSucc());
    } else {
      print("No Image");
      emit(setImageeroor());
    }
  }

  String? imgFirebase;
  String? imgname = "";
  Future<void> shareImageInFirebase({required ImageSource i}) async {
    emit(ShareImageLoad());
    setImage(i: i).then((value) {
      firebase_storage.FirebaseStorage.instance
          .ref()
          .child('products/${Uri.file(img!.path).pathSegments.last}')
          .putFile(img)
          .then((value) {
        value.ref.getDownloadURL().then((value) {
          imgname = Uri.file(img!.path).pathSegments.last;
          imgFirebase = value;
          emit(ShareImageSucc());
        }).catchError((onError) {
          emit(ShareImageeroor());
        });
      });
    });
  }
}
