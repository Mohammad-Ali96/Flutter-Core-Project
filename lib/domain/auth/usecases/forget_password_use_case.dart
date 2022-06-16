import 'package:core_package/domain/auth/repositories/auth_repository.dart';
import 'package:core_package/domain/core/entities/failures.dart';
import 'package:core_package/domain/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ForgetPasswordUseCase extends UseCase<Unit, ForgetPasswordUseCaseParams> {
  final AuthRepository authRepository;

  ForgetPasswordUseCase(this.authRepository);
  @override
  Future<Either<Failure, Unit>> call(ForgetPasswordUseCaseParams params) {
    return authRepository.resetPassword(email: params.email);
  }
}

class ForgetPasswordUseCaseParams {
  final String email;

  ForgetPasswordUseCaseParams(this.email);
}
