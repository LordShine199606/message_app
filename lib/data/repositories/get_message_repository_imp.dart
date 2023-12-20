import 'package:dartz/dartz.dart';
import 'package:message_app/common/exceptions/server_exception.dart';
import 'package:message_app/data/datasource/remote/get_messages_remote_datasource/get_messages_remote_datasource.dart';
import 'package:message_app/domain/entities/message_entity.dart';
import 'package:message_app/domain/repositories/get_messages_repository.dart';

class GetMessageRepositoryImp implements GetMessagesRepository {
  final GetMessagesRemoteDatasource _datasource;
  GetMessageRepositoryImp(this._datasource);

  @override
  Future<Either<ServerException, List<MessageEntity>>> call() {
    return _datasource();
  }
}