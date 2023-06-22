import 'package:flutter/material.dart';
import 'package:flutter_bloc_state/src/common/widgets/text_form_field.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../methods/export_providers.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  Animation? animation;
  AnimationController? animationController;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(builder: (context, notifier, child) {
      return Scaffold(
        body: Column(
          children: [
            CustomTextFormField(
              hintText: 'Enter your email',
              levelText: 'Email',
              isPassword: false,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              prefixIcon: const Icon(Icons.email_outlined),
              suffixIcon: null,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a email';
                }
                return null;
              },
            ),
            const Gap(14),
            CustomTextFormField(
              hintText: 'Enter your Password',
              levelText: 'Password',
              isPassword: false,
              keyboardType: TextInputType.text,
              controller: passwordController,
              prefixIcon: const Icon(Icons.password_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                  notifier.isSecurePassword = !notifier.isSecurePassword;
                },
                icon: Icon(
                  notifier.isSecurePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty || value.length < 7) {
                  return 'Please enter Password';
                }
                return null;
              },
            ),
          ],
        ),
      );
    });
  }
}
