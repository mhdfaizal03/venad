import 'package:flutter/material.dart';

import 'package:venad/widgets/constands/constands.dart';

class NavigateButtons extends StatelessWidget {
  Function()? toNavigate;
  ShapeBorder shape;
  final String navigateText;
  NavigateButtons(
      {super.key,
      required this.navigateText,
      required this.shape,
      this.toNavigate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: mq.width,
      child: MaterialButton(
          shape: shape,
          onPressed: toNavigate,
          color: primaryThemeColor,
          child: WrappedText(
              text: navigateText,
              fontSize: mq.width * .035,
              color: textLightColor,
              fontWeight: FontWeight.bold)),
    );
  }
}

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 2),
      width: 139,
      height: mq.height * .060,
      decoration: ShapeDecoration(
        color: primaryThemeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(mq.width * .5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'View All',
            style: TextStyle(
              color: textDarkColor,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_circle_right,
                color: Colors.black,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73,
      height: 73,
      child: Container(
        width: 73,
        height: 73,
        decoration: const ShapeDecoration(
          color: Colors.black,
          shape: OvalBorder(
            side: BorderSide(width: 5, color: Color(0xFFE2E2E2)),
          ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  Function() onTap;
  String textLabel;
  NextButton({super.key, required this.onTap, this.textLabel = 'Next'});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mq.width,
      height: 82,
      child: Center(
        child: SizedBox(
          width: 271,
          height: 50,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: 271,
              height: 50,
              decoration: ShapeDecoration(
                color: primaryThemeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Center(
                child: Text(
                  textLabel,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
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

class AddMoreLocationButton extends StatelessWidget {
  const AddMoreLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385,
      height: 73,
      decoration: ShapeDecoration(
        color: const Color(0xB2D9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Container(
        width: 374,
        height: 66,
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.699999988079071),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: const Center(
          child: Text(
            'Add more location',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}

class FilteringButtons extends StatelessWidget {
  String label;
  String filterText;
  Function() onPressed;
  FilteringButtons(
      {super.key,
      required this.filterText,
      required this.label,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 46,
          decoration: ShapeDecoration(
            color: greyButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WrappedText(
                    text: label,
                    fontSize: mq.width * .035,
                    color: textDarkColor),
                sizedBoxW10,
                GestureDetector(
                    onTap: onPressed,
                    child: WrappedText(
                      text: filterText,
                      fontSize: mq.width * .040,
                      color: redColor,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StartTripButton extends StatelessWidget {
  Function() notificationPressed;
  Function() startTripPressed;
  String navigateText;
  Color bgColor;
  StartTripButton(
      {super.key,
      required this.notificationPressed,
      required this.startTripPressed,
      required this.navigateText,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      // scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: notificationPressed,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: mq.width * 0.035),
            height: 45,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/notifications_icon.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                sizedBoxW10,
                WrappedText(
                    text: 'Notification',
                    fontSize: mq.width * .030,
                    color: textDarkColor),
              ],
            ),
          ),
        ),
        sizedBoxW10,
        Expanded(
          child: GestureDetector(
            onTap: startTripPressed,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: mq.width * 0.04),
              height: 50,
              decoration: ShapeDecoration(
                color: bgColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/startTrip_icon.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  sizedBoxW10,
                  WrappedText(
                      text: navigateText,
                      fontSize: mq.width * .030,
                      color: textDarkColor),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RoundButton extends StatelessWidget {
  String text;
  Color color;
  int length;
  VoidCallback onTap;
  RoundButton(
      {super.key,
      required this.color,
      required this.length,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 145,
          height: 56,
          decoration: ShapeDecoration(
            // color: const Color(0xFF953838),
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
