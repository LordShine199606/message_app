import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:message_app/common/configs/config.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';
import 'client_http.dart';

class ClientHttpImp implements ClientHttp {
  final _ioc = HttpClient();
  Client _client = Client();

  ClientHttpImp() {
    _ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    _client = IOClient(_ioc);
  }

  @override
  Future<Response> get({required String route, required Map<String, String>? headers}) async {
    try {
      bool isConnected = await SimpleConnectionChecker.isConnectedToInternet();

      if (isConnected) {
        return await _client.get(
          Uri.parse(Config.urlApi + route),
          headers: headers,
        );
        
      } else {
       return Response("{\"code\": 511, \"detail\": \"Sem internet\"}", 511);
      }

    } catch (e) {
      return Response("{\"code\": 500, \"detail\": \"Ocorreu um erro interno\"}", 500);

    } 
  }

  @override
  Future<Response> post({required String route, required Map<String, String>? headers, dynamic body}) async {
    try {
      bool isConnected = await SimpleConnectionChecker.isConnectedToInternet();

      if (isConnected) {
        return await _client.post(
          Uri.parse(Config.urlApi + route),
          headers: headers, 
          //body: null // jsonEncode(body)
        );

      } else {
        return Response("{\"code\": 511, \"detail\": \"Sem internet\"}", 511);

      }
    } catch (e) {
      return Response("{\"code\": 500, \"detail\": \"Ocorreu um erro interno\"}", 500);

    }
  }

  @override
  Future<Response> put({required String route, required Map<String, String>? headers, dynamic body}) async {
    try {
      bool isConnected = await SimpleConnectionChecker.isConnectedToInternet();

      if (isConnected) {
       return await _client.put(
          Uri.parse(Config.urlApi + route),
          headers: headers, 
          body: jsonEncode(body)
        );

      } else {
        return Response("{\"code\": 511, \"detail\": \"Sem internet\"}", 511);

      }
    } catch (e) {
      return Response("{\"code\": 500, \"detail\": \"Ocorreu um erro interno\"}", 500);

    }
  }

  @override
  Future<Response> delete({required String route, required Map<String, String>? headers, dynamic body}) async {
    try {
      bool isConnected = await SimpleConnectionChecker.isConnectedToInternet();

      if (isConnected) {
        return await _client.delete(
          Uri.parse(Config.urlApi + route), 
          headers: headers
        );

      } else {
        return Response("{\"code\": 511, \"detail\": \"Sem internet\"}", 511);

      }
    } catch (e) {
      return Response("{\"code\": 500, \"detail\": \"Ocorreu um erro interno\"}", 500);

    }
  }
}