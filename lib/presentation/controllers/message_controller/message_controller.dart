import 'package:message_app/common/exceptions/server_exception.dart';
import 'package:message_app/domain/entities/message_entity.dart';
import 'package:message_app/domain/usecases/get_messages_usecase/get_messages_usecase.dart';
import 'package:mobx/mobx.dart';
part 'message_controller.g.dart';

class MessageController = MessageControllerBase with _$MessageController;

abstract class MessageControllerBase with Store {

  final GetMessageUSerCase _getMessageUSerCase;
  MessageControllerBase(this._getMessageUSerCase);

  @observable
  bool isLoading = false;

  @observable
  List<MessageEntity> messages = [];

  @observable
  ServerException exception = ServerException(code: 0, message: '');
  
  Future<void> getMessages() async {
    isLoading = messages.isEmpty;

    final data = await _getMessageUSerCase();

    data.fold(
      (l) => exception = l, 
      (r) {
        messages = r;
        exception = ServerException(code: 0, message: '');
      }
    );

    isLoading = false;
  } 
}