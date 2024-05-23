import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/authentication/add_info_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 18, 221, 228),
      Color.fromARGB(255, 78, 130, 226),
    ],
  ).createShader(
    const Rect.fromLTWH(0.0, 80.0, 300.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: textDarkColor,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VENADU',
                    style: TextStyle(
                      fontSize: mq.width * .15,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient,
                    ),
                  ),
                  sizedBoxH20,
                  WrappedText(
                      text: 'Login or sign in to Venadu',
                      fontSize: mq.width * .045,
                      color: textLightColor,
                      fontWeight: FontWeight.bold),
                  sizedBoxH20,
                  TextFields(
                    label: 'Country/region',
                    dropdownPressed: () {},
                  ),
                  sizedBoxH10,
                  TextFields(
                    label: 'Phone no',
                    dropdownPressed: () {},
                  ),
                  sizedBoxH20,
                  WrappedText(
                      maxLines: 2,
                      text:
                          'we will call or text you to confirm your number. standard od messages and data rates apply.',
                      fontSize: mq.width * .030,
                      color: textLightColor,
                      fontWeight: FontWeight.bold),
                  sizedBoxH20,
                  NavigateButtons(
                    navigateText: 'Continue',
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    toNavigate: () {
                      Get.to(() => const AddInfoPage());
                    },
                  ),
                  sizedBoxH20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OR', style: TextStyle(color: textLightColor))
                    ],
                  ),
                  sizedBoxH20,
                  SizedBox(
                    height: 60,
                    width: mq.width,
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: textLightColor)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.mail,
                            color: textLightColor,
                          ),
                          WrappedText(
                              text: 'Continue with google',
                              fontSize: mq.width * .035,
                              color: textLightColor,
                              fontWeight: FontWeight.bold),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  sizedBoxH10,
                  SizedBox(
                    height: 60,
                    width: mq.width,
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: textLightColor)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: textLightColor,
                          ),
                          WrappedText(
                              text: 'Continue with facebook',
                              fontSize: mq.width * .035,
                              color: textLightColor,
                              fontWeight: FontWeight.bold),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
