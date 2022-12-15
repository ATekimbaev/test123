import 'package:flutter/material.dart';

class MyDefaultContainer extends StatelessWidget {
  const MyDefaultContainer({
    Key? key,
    required this.title,
    required this.icon,
    this.width = 120,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Container(
        height: 120,
        width: width,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(
              height: 5,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
