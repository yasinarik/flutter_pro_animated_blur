// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro_animated_blur/pro_animated_blur.dart';

/* -------------------------------------------------------------------------- */
/*                                    MAIN                                    */
/* -------------------------------------------------------------------------- */
void main() {
  runApp(const App());
}

/* -------------------------------------------------------------------------- */
/*                                     APP                                    */
/* -------------------------------------------------------------------------- */
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ProAnimatedBlur',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                                 HOME SCREEN                                */
/* -------------------------------------------------------------------------- */
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// Screen Header
            Header(),
            Expanded(
              child: Stack(
                children: [
                  /// A widget in the back of other widgets (any widget is OK)
                  /// This one covers the whole background in order to demonstrate the blured
                  /// area better.
                  SizedBox(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    // child: Image.asset(
                    //   'assets/big-cat.jpg',
                    //   fit: BoxFit.cover,
                    // ),
                    child: Image.network(
                      'https://i.ibb.co/T1Fz7gL/big-cat.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// A centered/sized column that holds 2 BlurredCard widgets.
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        children: [
                          Expanded(
                            child: BlurredCard(
                              blurAmount: 8,
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            flex: 1,
                            child: BlurredCard(
                              blurAmount: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                                   HEADER                                   */
/* -------------------------------------------------------------------------- */
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

/* -------------------------------------------------------------------------- */
/*                                BLURRED CARD                                */
/* -------------------------------------------------------------------------- */

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
      clipBehavior: Clip
          .antiAlias, // Make sure to use a Clip setting other than none. Otherwise, the blurring will be applied to whole background.
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
