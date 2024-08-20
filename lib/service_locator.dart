import 'package:get_it/get_it.dart';
import 'package:spotify/data/repo/auth/auth_repo_imp.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repo/auth/auth.dart';
import 'package:spotify/domain/usecases/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDepedencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImp());

  sl.registerSingleton<AuthRepo>(AuthRepoImp());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
