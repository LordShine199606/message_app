import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:message_app/common/exceptions/server_exception.dart';
import 'package:message_app/data/datasource/remote/get_messages_remote_datasource/get_messages_remote_datasource.dart';
import 'package:message_app/data/dtos/message_dto.dart';
import 'package:message_app/data/http/client_http.dart';
import 'package:message_app/domain/entities/message_entity.dart';

class GetMesssagesRemoteDatasourceImp implements GetMessagesRemoteDatasource {
  final ClientHttp _client;
  GetMesssagesRemoteDatasourceImp(this._client);

  @override
  Future<Either<ServerException, List<MessageEntity>>> call() async {
    
    final response = await _client.post(
      route: "/Cadastros/listaTodasMensagens", 
      headers: { "Content-Type": "application/json" }, 
      body: null
    );

    if(response.statusCode == 200 || response.statusCode == 201) {
      return Right(
        List<MessageEntity>.from(
          json.decode(response.body).map(
            (x) => MessageDto.fromJson(x)
          )
        )
      );
    } else if(response.statusCode == 511) {
      return Left(
        ServerException(code: response.statusCode, message: json.decode(response.body)['detail'])
      );

    } else {
      return Left(
        ServerException(code: response.statusCode, message: 'Ocorreu um erro interno')
      );
    }
  }
}