import 'package:flutter/material.dart';
import 'package:doctorak/features/login/presentation/widgets/login_body_bloc_consumer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginBodyBlocConsumer());
  }
}
