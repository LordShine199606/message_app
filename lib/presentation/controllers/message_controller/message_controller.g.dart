// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MessageController on MessageControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'MessageControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$messagesAtom =
      Atom(name: 'MessageControllerBase.messages', context: context);

  @override
  List<MessageEntity> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(List<MessageEntity> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  late final _$exceptionAtom =
      Atom(name: 'MessageControllerBase.exception', context: context);

  @override
  ServerException get exception {
    _$exceptionAtom.reportRead();
    return super.exception;
  }

  @override
  set exception(ServerException value) {
    _$exceptionAtom.reportWrite(value, super.exception, () {
      super.exception = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
messages: ${messages},
exception: ${exception}
    ''';
  }
}
