import 'package:core_package/domain/auth/repositories/auth_repository.dart';
import 'package:core_package/domain/core/entities/failures.dart';
import 'package:core_package/domain/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetFirstTimeLoggedUseCase
    extends UseCase<void, SetFirstTimeLoggedUseCaseParams> {
  final AuthRepository authRepository;

  SetFirstTimeLoggedUseCase(this.authRepository);

  @override
  Future<Either<Failure, void>> call(params) async {
    return authRepository.setFirstTimeLogged(params.isFirstTimeLogged);
  }
}

class SetFirstTimeLoggedUseCaseParams {
  final bool isFirstTimeLogged;

  SetFirstTimeLoggedUseCaseParams({required this.isFirstTimeLogged});
}
