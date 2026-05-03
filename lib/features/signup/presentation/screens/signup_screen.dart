import 'package:flutter/material.dart';
import 'package:doctorak/features/signup/presentation/widgets/signup_body_bloc_consumer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignupBodyBlocConsumer());
  }
}
