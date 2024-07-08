import 'package:egov/home.dart';
import 'package:egov/register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => Home()),
  GoRoute(path: '/register', builder: (context, state) => Register())
]);
