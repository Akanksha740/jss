import 'package:flutter/material.dart';
import 'package:jss/sidebar/text_style.dart';

class SidebarItem extends StatelessWidget {
  double _safePaddingTop, _safePaddingBottom, _height, _width, _keyboard;
  final ifSelected;
  final String text;
  final Function onTouch;

  const SidebarItem({Key key, this.ifSelected, this.text, this.onTouch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    _safePaddingTop = MediaQuery.of(context).padding.top;
    _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    _keyboard = MediaQuery.of(context).viewInsets.bottom;
    return Transform.rotate(
      angle: -1.58,
      child: GestureDetector(
        onTap: onTouch,
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: _height * 0.02,
              width: _width * 0.02,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ifSelected ? Colors.white : Colors.transparent),
            ),
            AnimatedDefaultTextStyle(
              child: Text(
                text,
              ),
              duration: const Duration(milliseconds: 100),
              style: ifSelected ? selectedTabStyle : defaultStyle,
            ),
          ],
        ),
      ),
    );
  }
}
