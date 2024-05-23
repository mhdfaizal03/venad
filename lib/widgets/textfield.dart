import 'package:flutter/material.dart';
import 'package:venad/widgets/constands/constands.dart';

class TextFields extends StatelessWidget {
  final String label;
  Function()? dropdownPressed;
  TextEditingController? controller;
  Color? filledColor;
  double radius;
  Widget? prefixicon;
  TextFields({
    super.key,
    required this.label,
    this.dropdownPressed,
    this.filledColor = Colors.white,
    this.controller,
    this.radius = 5,
    this.prefixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      // cursorColor: Colors.black,
      controller: controller,

      decoration: InputDecoration(
        prefixIcon: prefixicon,
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        suffixIcon: IconButton(
            onPressed: dropdownPressed,
            icon: const Icon(Icons.arrow_drop_down_outlined)),
        fillColor: filledColor,
        filled: true,
        border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius))),
      ),
    );
  }
}

class QuestionFields extends StatelessWidget {
  String question;
  String hintText;
  TextEditingController? controller;

  QuestionFields(
      {super.key,
      required this.hintText,
      required this.question,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(
            color: Colors.black,
            fontSize: mq.width * .035,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        sizedBoxH10,
        TextFormField(
          style: const TextStyle(color: Colors.black),
          controller: controller,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            fillColor: const Color(0xFFD9D9D9),
            filled: true,
            contentPadding: const EdgeInsets.all(25),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: mq.width * .035,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}

class CheckBoxText extends StatelessWidget {
  String boxText;
  bool value;
  Function(bool?)? onPressed;
  CheckBoxText(
      {super.key,
      required this.onPressed,
      required this.boxText,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            checkColor: Colors.black,
            activeColor: primaryThemeColor,
            value: value,
            onChanged: onPressed),
        Text(
          boxText,
          style: TextStyle(
            color: Colors.black,
            fontSize: mq.width * .035,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
