abstract class AuthRepo {
  Future<void> loginwithface();
  Future<void> loginwithGoogle();
  Future<void> completeInfo({
    required String name,
    required String adress,
    required num phone,
  });
}
