import 'package:flutter/material.dart';
import 'dart:io';

class ShopLoveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShopLoveAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    //Here we will find width of our device
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: preferredSize.height,
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Colors.deepOrangeAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
