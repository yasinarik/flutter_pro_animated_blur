// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:pro_animated_blur/pro_animated_blur.dart';

class BlurredCard extends StatefulWidget {
  final double? blurAmount;
  const BlurredCard({
    Key? key,
    this.blurAmount,
  }) : super(key: key);

  @override
  _BlurredCardState createState() => _BlurredCardState();
}

class _BlurredCardState extends State<BlurredCard> {
  bool _isBlurred = false;

  void switchBlur() {
    _isBlurred = !_isBlurred;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double _maxBlurAmount = widget.blurAmount ?? 8;
    double _minBlurAmount = 0;

    /// This is a simple container and it is styled a bit.
    /// Tap anywhere to switch '_isBlurred' state object between true & false.
    /// Since this widget has ProAnimatedBlur widget inside,

    return Container(
      clipBehavior: Clip.antiAlias, // Make sure to use a Clip setting other than none. Otherwise, the blurring will be applied to whole background.
      decoration: BoxDecoration(
        color: Color(0x1FFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: ProAnimatedBlur(
        blur: _isBlurred ? _maxBlurAmount : _minBlurAmount,
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            switchBlur();
          },
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              constraints: BoxConstraints(maxHeight: 40),
              decoration: BoxDecoration(
                color: Color(0xC2000000),
              ),
              padding: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Tap to Switch Blur',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: -0.5,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
