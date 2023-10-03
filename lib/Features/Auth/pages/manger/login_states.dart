abstract class LoginStaes {}

class InitLoginState extends LoginStaes {}

class ChangePassword extends LoginStaes {}

class LoadingRegisterUser extends LoginStaes {}

class SuccRegisterUser extends LoginStaes {
  String Uid;
  SuccRegisterUser({required this.Uid});
}

class eroorRegisterUser extends LoginStaes {
  String? eroor;
  eroorRegisterUser({required this.eroor});
}

class LoadingLoginUser extends LoginStaes {}

class SuccLoginUser extends LoginStaes {
  String Uid;
  bool isAdmin;
  SuccLoginUser({required this.Uid, required this.isAdmin});
}

class eroorLoginUser extends LoginStaes {
  String? eroor;
  eroorLoginUser({required this.eroor});
}
