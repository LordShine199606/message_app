import 'package:flutter/material.dart';
import 'package:message_app/presentation/ui/pages/home_page/home_page.dart';


class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Message App',
      home:HomePage(),
    );
  }
}