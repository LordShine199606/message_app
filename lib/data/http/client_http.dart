import 'package:http/http.dart';

abstract class ClientHttp {
  
  Future<Response> get({required String route, required Map<String, String>? headers});

  Future<Response> post({required String route, required Map<String, String>? headers,required dynamic body});

  Future<Response> put({required String route, required Map<String, String>? headers, required dynamic body});

  Future<Response> delete({required String route, required Map<String, String>? headers,required dynamic body});
}