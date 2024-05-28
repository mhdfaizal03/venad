import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/authentication/otp_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FlCountryCodePicker? countryPicker;

  final TextEditingController countryCodeController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  CountryCode? countryCode;

  Future<void> _submitPhoneNumber(
    BuildContext context,
  ) async {
    String phonenumber =
        countryCode!.dialCode + phoneNumberController.text.trim();
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: phonenumber,
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        print(e.message.toString());
      },
      codeSent: (String verificationId, int? resentToken) {
        Get.to(() => OtpPage(
              verificationId: phonenumber,
              phoneNumber: phonenumber,
            ));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 18, 221, 228),
      Color.fromARGB(255, 78, 130, 226),
    ],
  ).createShader(
    const Rect.fromLTWH(0.0, 80.0, 300.0, 70.0),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final favoriteCountries = [
      'IN',
      'JP',
      'USD',
      'CA',
      'US',
    ];
    countryPicker = FlCountryCodePicker(
      favorites: favoriteCountries,
      favoritesIcon: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
  }

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
                  GestureDetector(
                    onTap: () async {
                      final code =
                          await countryPicker?.showPicker(context: context);
                      setState(() {
                        countryCode = code;
                      });

                      try {
                        countryCodeController.text = countryCode!.dialCode;
                      } catch (e) {
                        print(e.toString());
                      }
                    },
                    child: TextFields(
                      isEnable: false,
                      prefix: countryCode != null
                          ? Padding(
                              padding: const EdgeInsets.all(10),
                              child: countryCode?.flagImage,
                            )
                          : null,
                      keyBoardType: TextInputType.name,
                      controller: countryCodeController,
                      label: countryCode != null
                          ? countryCode!.name
                          : 'Select your country',
                    ),
                  ),
                  sizedBoxH10,
                  TextFields(
                    controller: phoneNumberController,
                    keyBoardType: TextInputType.phone,
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
                    toNavigate: () => _submitPhoneNumber(context),
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
