import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repo/auth/auth.dart';
import 'package:spotify/service_locator.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }
}
