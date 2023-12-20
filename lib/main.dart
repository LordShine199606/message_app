import 'package:flutter/material.dart';
import 'package:message_app/core/inject.dart';
import 'package:message_app/presentation/ui/pages/app_page.dart';

void main() {

  Inject.init();
  runApp(const AppPage());
}

