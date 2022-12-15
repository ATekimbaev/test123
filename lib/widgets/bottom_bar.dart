import 'package:flutter/material.dart';

import 'default_container.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.green,
      child: Row(
        children: const [
          MyDefaultContainer(
            title: 'qweqweqwe1',
            icon: Icons.abc,
          ),
          MyDefaultContainer(
            title: 'title 2',
            icon: Icons.g_translate,
          ),
          MyDefaultContainer(
            title: 'Title 3',
            icon: Icons.h_mobiledata,
          ),
        ],
      ),
    );
  }
}
