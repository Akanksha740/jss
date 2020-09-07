import 'package:flutter/material.dart';
import 'package:jss/sidebar/sidebar_item.dart';

class SidebarLayout extends StatelessWidget {
  double _safePaddingTop, _safePaddingBottom, _height, _width, _keyboard;
  @override
  Widget build(BuildContext context) {
    _safePaddingTop = MediaQuery.of(context).padding.top;
    _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    _keyboard = MediaQuery.of(context).viewInsets.bottom;
    return Stack(
      children: [
        Positioned(
          width: _width * 0.1,
          top: 0,
          bottom: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF1DE9B6),
                  Color(0XFF26C6DA),
                  Color(0XFF26C6DA),
                  Color(0xFF4DD0E1),
                  Color(0XFF26C6DA),
                  Color(0xFF00BCD4),
                ],
                stops: [0.05, 0.3, 0.5, 0.55, 0.8, 1],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: _height * 0.02,
                  width: _width * 0.1,
                ),
                Icon(Icons.dehaze, color: Colors.white),
                SizedBox(
                  height: _height * 0.1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      SidebarItem(
                        text: "Maintaince",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
