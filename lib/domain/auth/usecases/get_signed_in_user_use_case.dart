import 'package:core_package/domain/auth/entities/user.dart';
import 'package:core_package/domain/auth/repositories/auth_repository.dart';
import 'package:core_package/domain/core/entities/failures.dart';
import 'package:core_package/domain/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSignedInUserUseCase extends UseCase<User?, NoParams> {
  final AuthRepository authRepository;

  GetSignedInUserUseCase(this.authRepository);

  @override
  Future<Either<Failure, User?>> call(NoParams params) {
    return authRepository.getSignedInUser();
  }
}
