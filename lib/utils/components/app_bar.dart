import 'package:flutter/material.dart';

import 'constants.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constants.whiteColor,
        border: Border.all(width: 1.5, color: Constants.outline),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 110.0,
                width: 110.0,
                child: Image.asset('assets/Logo.png')),
            const Spacer(),
            const Image(image: AssetImage('assets/Notification.jpg')),
            Constants.wideBox(27),
            const Image(image: AssetImage('assets/Search.png')),
            Constants.wideBox(30),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
