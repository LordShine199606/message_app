import 'package:flutter/material.dart';
import 'package:message_app/domain/entities/message_entity.dart';
import 'package:message_app/presentation/ui/helpers/format_date.dart';
import 'package:message_app/presentation/ui/utils/consts_utils.dart';

class CardMessageComponents extends StatelessWidget {
  final MessageEntity  message;
  const CardMessageComponents({required this.message,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(.5),
            width: .5
          )
        )
      ),
       child:  Column(
        children: [
       Row(
         children: [
            message.para!.trim() != "" ? CircleAvatar(
            backgroundColor: ConstsUtils.primaryColors,
            child:  Text(
              message.para?.substring(0,1) ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white
              ),
            ),  
          ) : const SizedBox(),
          const SizedBox(width: 10,),

            Expanded(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                  message.msgStTitulo ?? "",
                  style: const TextStyle(
                    fontSize: 12,
                  //  color: message.msgChLida == "S"? Colors.blue : Colors.red,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  message.msgStMensagem ?? "",
                  style: const TextStyle(
                    fontSize: 10, 
                    fontWeight: FontWeight.w100
                  ),
                ),

                const SizedBox(height: 10,),

                Text(
                  formateDate(message.msgDtCriacao, showTime: true),
                  style: const TextStyle(
                    fontSize: 8, 
                    fontWeight: FontWeight.w100
                  ),
                )
               ],
              ),
            ),
         ],
       )
        
        ],
       ),
    );
  }
}