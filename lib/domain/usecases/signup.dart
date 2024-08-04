import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/domain/repo/auth/auth.dart';
import 'package:spotify/domain/usecases/usecase.dart';
import 'package:spotify/service_locator.dart';

class SignupUseCase implements Usecase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepo>().signup(params!);
  }
}
