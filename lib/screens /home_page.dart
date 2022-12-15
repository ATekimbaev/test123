import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Sample App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Spacer(),
          CustomText(title: 'Image'),
          Spacer(),
          BottomBar(),
        ],
      ),
    );
  }
}
