import 'package:flutter/material.dart';

AppBar AppBarWidget() {
    return AppBar(
      title: Center(child: Text("DRIPS")),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
      ],
    );
  }
