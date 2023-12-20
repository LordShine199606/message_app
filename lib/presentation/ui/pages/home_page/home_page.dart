import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:message_app/presentation/controllers/message_controller/message_controller.dart';
import 'package:message_app/presentation/ui/pages/home_page/components/card_messages_components.dart';
import 'package:message_app/presentation/ui/utils/consts_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final messageController = GetIt.I.get<MessageController>();

  @override
  void initState() {
    messageController.getMessages().then(
      (_) {
        if(messageController.exception.code != 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(messageController.exception.message ?? ''))
          );
        }
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ConstsUtils.primaryColors,
        title: const Text(
          "Mensagens",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
      body: Observer(
        builder: (_) {
        return messageController.isLoading 
        ? Center(
          child: CircularProgressIndicator(
            color: ConstsUtils.primaryColors,
          ),
        )
        : ListView(
          children: messageController.messages.map((message) => CardMessageComponents(message: message,)).toList(),
        );
      }),
    );
  }
}
