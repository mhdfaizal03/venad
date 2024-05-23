import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/models/getx_model.dart';

// sizedBoxes (height)
Widget sizedBoxH5 = const SizedBox(height: 5);
Widget sizedBoxH10 = const SizedBox(height: 10);
Widget sizedBoxH20 = const SizedBox(height: 20);
Widget sizedBoxH30 = const SizedBox(height: 30);
Widget sizedBoxH40 = const SizedBox(height: 40);
Widget sizedBoxH50 = const SizedBox(height: 50);

// sizedBoxes (width)
Widget sizedBoxW20 = const SizedBox(width: 20);
Widget sizedBoxW5 = const SizedBox(width: 5);
Widget sizedBoxW10 = const SizedBox(width: 10);
Widget sizedBoxW30 = const SizedBox(width: 30);
Widget sizedBoxW40 = const SizedBox(width: 40);
Widget sizedBoxW50 = const SizedBox(width: 50);

// colors

Color textLightColor = Colors.white;
Color textDarkColor = Colors.black;
Color redColor = const Color(0xFF953838);
Color greyButtonColor = const Color(0xFFD9D9D9);
Color blueColor = const Color(0xFF057497);

// themes

Color primaryThemeColor = const Color(0xFF00F5B5);
Color darkTheme = Colors.black;
Color lightTheme = Colors.white;

// late

late Size mq;
late String lat;
late String lon;

// api constants

String googleMap_key = "";

//image_picker controllers

//text

class WrappedText extends StatelessWidget {
  FontWeight fontWeight;
  double fontSize;
  String text;
  int maxLines;
  Color color;
  TextAlign alignment;
  WrappedText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontWeight = FontWeight.w600,
    this.maxLines = 2,
    this.alignment = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      textAlign: alignment,
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Poppins',
        fontWeight: fontWeight,
      ),
    );
  }
}
