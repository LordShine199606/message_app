import 'package:dartz/dartz.dart';
import 'package:message_app/common/exceptions/server_exception.dart';
import 'package:message_app/domain/entities/message_entity.dart';

abstract class GetMessageUSerCase {
  Future<Either<ServerException,List<MessageEntity>>> call();
}