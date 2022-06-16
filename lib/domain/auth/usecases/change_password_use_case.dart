import 'package:core_package/domain/auth/repositories/auth_repository.dart';
import 'package:core_package/domain/core/entities/failures.dart';
import 'package:core_package/domain/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChangePasswordUseCase
    extends UseCase<String, ChangePasswordUseCaseParams> {
  final AuthRepository repository;

  ChangePasswordUseCase(this.repository);

  @override
  Future<Either<Failure, String>> call(ChangePasswordUseCaseParams params) {
    return repository.changePassword(
      userId: params.userId,
      newPassword: params.newPassword,
      oldPassword: params.oldPassword,
    );
  }
}

class ChangePasswordUseCaseParams {
  final int userId;
  final String oldPassword;
  final String newPassword;

  ChangePasswordUseCaseParams({
    required this.userId,
    required this.oldPassword,
    required this.newPassword,
  });
}
