import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar {
  static customAppBar(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        width: 100.w,
        height: 30.h,
      ),
      elevation: 3.w,
      actions: [
        PopupMenuButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFF264B82),
          ),
          onSelected: handleClick,
          color: Color(0xFFE7EEF7),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("Заказчик"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("Поставщик"),
              value: 2,
            )
          ],
        ),
      ],
    );
  }

  void handleClick(int value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
}
