import 'package:get_it/get_it.dart';
import 'package:message_app/data/datasource/remote/get_messages_remote_datasource/get_messages_remote_datasource.dart';
import 'package:message_app/data/datasource/remote/get_messages_remote_datasource/get_messages_remote_datasource_imp.dart';
import 'package:message_app/data/http/client_http.dart';
import 'package:message_app/data/http/client_http_imp.dart';
import 'package:message_app/data/repositories/get_message_repository_imp.dart';
import 'package:message_app/domain/repositories/get_messages_repository.dart';
import 'package:message_app/domain/usecases/get_messages_usecase/get_message_usecase_imp.dart';
import 'package:message_app/domain/usecases/get_messages_usecase/get_messages_usecase.dart';
import 'package:message_app/presentation/controllers/message_controller/message_controller.dart';

class Inject {
  static init() {

    GetIt getIt = GetIt.instance;

    // Http
    getIt.registerLazySingleton<ClientHttp>(() => ClientHttpImp());

    // REMOTE DATASOURCE
    getIt.registerLazySingleton<GetMessagesRemoteDatasource>(() => GetMesssagesRemoteDatasourceImp(getIt()));

    // REPOSITORIES 
    getIt.registerLazySingleton<GetMessagesRepository>(() => GetMessageRepositoryImp(getIt()));

    // USECASE
    getIt.registerLazySingleton<GetMessageUSerCase>(() => GetMessageUseCaseImp(getIt()));

    // CONTROLLERS
    getIt.registerLazySingleton<MessageController>(() => MessageController(getIt()));
     
  }
}