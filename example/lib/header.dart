// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      constraints: BoxConstraints(maxHeight: 40),
      decoration: BoxDecoration(
        color: Color(0xFF076D3D),
      ),
      padding: EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'ProAnimatedBlur - Example App',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
