import 'package:flutter/material.dart';
import 'package:componentes_app/pages/home.dart';
import 'package:componentes_app/pages/alert_page.dart';
import 'package:componentes_app/pages/avatar_page.dart';
import 'package:componentes_app/pages/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => const HomePage(),
    'alert': (context) => const AlertPage(),
    'avatar': (context) => const AvatarPage(),
    'card': (context) => const CardPage(),
  };
}
