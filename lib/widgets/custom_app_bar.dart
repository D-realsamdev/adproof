// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/shareds/utils/border_radius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left:15.0, top: 10),
        child: Container(
          width: 30, 
          height: 10, 
          decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(appBarIconBorder),
            border: Border.all(
              color: Colors.black,
              width: 0.5, 
            ), ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ),
      ),
    );
  }
}

