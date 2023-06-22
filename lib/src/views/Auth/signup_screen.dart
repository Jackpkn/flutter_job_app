// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc_state/src/common/widgets/text_form_field.dart';
import 'package:gap/gap.dart';

class ResisterScreen extends StatelessWidget {
  static const String routeName = 'resister-screen';

  ResisterScreen({
    Key? key,
  }) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormFieldInput(
            hintText: ' Name',
            levelText: 'Enter Your Name',
            isPassword: false,
            controller: nameController,
          ),
          const Gap(10),
          TextFormFieldInput(
            hintText: 'Email',
            levelText: 'Enter Your Email',
            isPassword: false,
            controller: emailController,
          ),
          const Gap(10),
          TextFormFieldInput(
            hintText: 'Password',
            levelText: 'Enter Your Password',
            isPassword: false,
            controller: passwordController,
          ),
          const Gap(10),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Resister Account'),
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
          const Text.rich(
            TextSpan(
              text: 'Do you have already registered',
              children: [
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 239, 13),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
