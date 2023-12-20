import 'package:dartz/dartz.dart';
import 'package:message_app/common/exceptions/server_exception.dart';
import 'package:message_app/domain/entities/message_entity.dart';
import 'package:message_app/domain/repositories/get_messages_repository.dart';
import 'package:message_app/domain/usecases/get_messages_usecase/get_messages_usecase.dart';

class GetMessageUseCaseImp implements GetMessageUSerCase {
  final GetMessagesRepository _repository;
  GetMessageUseCaseImp(this._repository);
  @override
  Future<Either<ServerException, List<MessageEntity>>> call() {
   return _repository();

  }
}