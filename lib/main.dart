import 'package:flutter/material.dart';
import 'package:second_app/theme/app_colors.dart';
import 'package:second_app/theme/app_fonts.dart';

import 'widgets/custom_text_feild.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: BGWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                  lable: 'lable',
                  icon: Icons.abc_outlined,
                  controller: TextEditingController(),
                  onChaged: (value) {}),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                  lable: '123123',
                  icon: Icons.aspect_ratio,
                  controller: TextEditingController(),
                  onChaged: (value) {}),
            ],
          ),
        ),
      ),
    );
  }
}

class BGWidget extends StatelessWidget {
  const BGWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColor.bgGradient),
      ),
      child: child,
    );
  }
}
