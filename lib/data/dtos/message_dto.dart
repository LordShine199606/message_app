import 'package:message_app/domain/entities/message_entity.dart';

class MessageDto extends MessageEntity {
  MessageDto({
    int? msgInCodigo,
    int? msgInDe,
    int? msgInPara,
    String? msgStTitulo,
    String? msgStMensagem,
    DateTime? msgDtCriacao,
    String? de,
    String? para,
    String? msgChLida,
    String? msgChModelo
  }) : super(
    msgInCodigo: msgInCodigo,
    msgInDe: msgInDe,
    msgInPara: msgInPara,
    msgStTitulo: msgStTitulo,
    msgStMensagem: msgStMensagem,
    msgDtCriacao: msgDtCriacao,
    de: de,
    para: para,
    msgChLida: msgChLida,
    msgChModelo: msgChModelo
  );

  factory MessageDto.fromJson(dynamic json) => MessageDto(
    msgInCodigo: json["msg_in_codigo"] ?? 0,
    msgInDe:  json["msg_in_de"] ?? 0,
    msgInPara: json["msg_in_para"] ?? 0,
    msgStTitulo: json["msg_st_titulo"] ?? "",
    msgStMensagem: json["msg_st_mensagem"] ?? "",
    msgDtCriacao: json["msg_dt_criacao"] == null ? null : DateTime.tryParse(json["msg_dt_criacao"]),
    de: json["de"] ?? "",
    para: json["para"] ?? "",
    msgChLida: json["msg_ch_lida"] ?? "",
    msgChModelo: json["msg_ch_modelo"] ?? "",
  );
}