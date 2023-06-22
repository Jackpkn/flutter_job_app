import 'package:flutter/material.dart';
import 'package:flutter_bloc_state/src/common/widgets/app_style.dart';
import 'package:flutter_bloc_state/src/common/widgets/reusable_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ReusableText(
              text: 'Search Find & Apply',
              style: appStyle(
                fontSize: 23,
                color: Colors.black,
                fw: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
