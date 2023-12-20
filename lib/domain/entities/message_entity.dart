class MessageEntity {
  int? msgInCodigo;
  int? msgInDe;
  int? msgInPara;
  String? msgStTitulo;
  String? msgStMensagem;
  DateTime? msgDtCriacao;
  String? de;
  String? para;
  String? msgChLida;
  String? msgChModelo;

  MessageEntity({
  this.de, 
  this.msgChLida,
  this.msgChModelo,
  this.msgDtCriacao,this.msgInCodigo,
  this.msgInDe,this.msgInPara,
  this.msgStMensagem,
  this.msgStTitulo,
  this.para});

}