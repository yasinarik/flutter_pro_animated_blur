// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:example/blurred_card.dart';
import 'package:example/header.dart';
import 'package:flutter/material.dart';

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
