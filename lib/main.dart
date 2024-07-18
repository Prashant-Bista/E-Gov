import 'package:egov/emergency_response/emergency_home.dart';
import 'package:egov/registration/death.dart';
import 'package:egov/home.dart';
import 'package:egov/registration/birth.dart';
import 'package:egov/success.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
  GoRoute(path: '/birth', builder: (context, state) => Birth()),
  GoRoute(path: '/death', builder: (context, state) => Death()),
  GoRoute(path: '/success', builder: (context, state) => Success()),
  GoRoute(path: '/alerthome', builder: (context, state) => EmergencyHome()),
]);
