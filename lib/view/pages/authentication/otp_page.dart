// import 'dart:async';
// import 'dart:developer';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:venad/view/pages/authentication/add_info_page.dart';
// import 'package:venad/view/pages/authentication/login_page.dart';
// import 'package:venad/widgets/constands/constands.dart';
// import 'package:venad/widgets/navigate_buttons.dart';

// class OtpPage extends StatefulWidget {
//   String verificationId;
//   String phoneNumber;
//   OtpPage({super.key, required this.verificationId, required this.phoneNumber});

//   @override
//   State<OtpPage> createState() => _OtpPageState();
// }

// class _OtpPageState extends State<OtpPage> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   Timer? timer;

//   int countdown = 60;

//   bool canWeResend = false;

//   bool isLoading = false;

//   List<TextEditingController> otpControllers =
//       List.generate(6, (index) => TextEditingController());

//   Future<void> _submitOtpNumber(BuildContext context) async {
//     if (_formKey.currentState?.validate() ?? false) {
//       setState(() {
//         isLoading = true;
//       });

//       String otp = otpControllers.map((controller) => controller.text).join('');
//       FirebaseAuth auth = FirebaseAuth.instance;

//       try {
//         PhoneAuthCredential credential = PhoneAuthProvider.credential(
//             verificationId: widget.verificationId, smsCode: otp);

//         await auth.signInWithCredential(credential);
//         Get.to(() => const AddInfoPage());
//       } catch (e) {
//         log(e.toString());
//         ScaffoldMessenger.of(context)
//             .showSnackBar(const SnackBar(content: Text('Invalid OTP')));
//       } finally {
//         setState(() {
//           isLoading = false;
//         });
//       }
//     }
//   }

//   void resentTimer() {
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         if (countdown > 0) {
//           countdown--;
//         } else {
//           canWeResend = true;
//           timer.cancel();
//         }
//       });
//     });
//   }

//   void resendOtp() async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     String phoneNumber = widget.phoneNumber;

//     setState(() {
//       if (countdown <= 0) {
//         countdown = 60;
//         canWeResend = false;
//       }
//     });

//     try {
//       await auth.verifyPhoneNumber(
//         phoneNumber: phoneNumber,
//         timeout: const Duration(seconds: 60),
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           await auth.signInWithCredential(credential);
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           print(e.message);
//         },
//         codeSent: (String verificationId, int? resendToken) {
//           setState(() {
//             widget.verificationId = verificationId;
//           });
//         },
//         codeAutoRetrievalTimeout: (String verificationId) {
//           setState(() {
//             widget.verificationId = verificationId;
//           });
//         },
//       );
//     } catch (e) {
//       log(e.toString());
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Something went wrong try again later')));
//     } finally {

//     }

//     resentTimer();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     timer?.cancel();
//     for (var controller in otpControllers) {
//       controller.dispose();
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     resentTimer();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: darkTheme,
//         foregroundColor: lightTheme,
//       ),
//       backgroundColor: darkTheme,
//       body: isLoading
//           ? Center(
//               child: CircularProgressIndicator(
//                 strokeWidth: 1.5,
//                 color: primaryThemeColor,
//               ),
//             )
//           : Padding(
//               padding: EdgeInsets.all(mq.width * .035),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         WrappedText(
//                             text: 'Verification Code',
//                             fontSize: mq.width * .055,
//                             color: lightTheme),
//                         sizedBoxH10,
//                         WrappedText(
//                             text: 'We have sent you a verification code',
//                             fontSize: mq.width * .030,
//                             color: Colors.grey),
//                         sizedBoxH10,
//                         Row(
//                           children: [
//                             WrappedText(
//                                 text: widget.phoneNumber,
//                                 fontSize: mq.width * .035,
//                                 color: textLightColor),
//                             TextButton(
//                               onPressed: () {
//                                 Get.off(() => const LoginPage());
//                               },
//                               child: WrappedText(
//                                   text: 'Change phone number?',
//                                   fontSize: mq.width * .035,
//                                   color: primaryThemeColor),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: List.generate(
//                             6,
//                             (index) => OtpForm(
//                               controller: otpControllers[index],
//                             ),
//                           ),
//                         ),
//                         sizedBoxH20,
//                         Row(
//                           children: [
//                             WrappedText(
//                                 text: 'Resend code after',
//                                 fontSize: mq.width * .030,
//                                 color: Colors.grey),
//                             TextButton(
//                                 onPressed: () {},
//                                 child: WrappedText(
//                                     text: '00:${countdown.toString()}',
//                                     fontSize: mq.width * .030,
//                                     color: primaryThemeColor))
//                           ],
//                         )
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         NavigateButtons(
//                           navigateText: 'Continue',
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5)),
//                           toNavigate: () => _submitOtpNumber(context),
//                         ),
//                         sizedBoxH10,
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             WrappedText(
//                                 text: 'Didn\'t you receive any code? ',
//                                 fontSize: mq.width * .035,
//                                 color: textLightColor),
//                             TextButton(
//                               onPressed: () =>
//                                   countdown < 1 ? resendOtp() : null,
//                               child: WrappedText(
//                                   text: 'Resend now',
//                                   fontSize: mq.width * .040,
//                                   color: countdown < 1
//                                       ? primaryThemeColor
//                                       : Colors.grey),
//                             )
//                           ],
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }
// }

// class OtpForm extends StatelessWidget {
//   final TextEditingController controller;

//   const OtpForm({super.key, required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: mq.width * .11,
//       height: mq.width * .11,
//       child: TextFormField(
//         controller: controller,
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return '';
//           }
//           if (!RegExp(r'^[0-9]$').hasMatch(value)) {
//             return '';
//           }
//           return null;
//         },
//         style: TextStyle(
//             fontFamily: 'Poppins',
//             color: textLightColor,
//             fontSize: mq.width * .055),
//         keyboardType: TextInputType.number,
//         textAlign: TextAlign.center,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(1),
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.only(bottom: mq.width * .0),
//           errorStyle: const TextStyle(height: 0), // Hide the error text
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5),
//             borderSide: const BorderSide(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/authentication/add_info_page.dart';
import 'package:venad/view/pages/authentication/login_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class OtpPage extends StatefulWidget {
  String verificationId;
  String phoneNumber;
  OtpPage({super.key, required this.verificationId, required this.phoneNumber});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Timer? timer;

  int countdown = 60;

  bool canWeResend = false;

  bool isLoading = false;
  bool isResending = false;

  List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());

  Future<void> _submitOtpNumber(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        isLoading = true;
      });

      String otp = otpControllers.map((controller) => controller.text).join('');
      FirebaseAuth auth = FirebaseAuth.instance;

      try {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: widget.verificationId, smsCode: otp);

        await auth.signInWithCredential(credential);
        Get.to(() => const AddInfoPage());
      } catch (e) {
        log(e.toString());
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Invalid OTP')));
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  void resentTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          canWeResend = true;
          timer.cancel();
        }
      });
    });
  }

  void resendOtp() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    String phoneNumber = widget.phoneNumber;

    setState(() {
      isResending = true;
      if (countdown <= 0) {
        countdown = 60;
        canWeResend = false;
      }
    });

    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          setState(() {
            isResending = false;
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          log(e.message.toString());
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Something went wrong try again later')));
          setState(() {
            isResending = false;
            canWeResend = false;
          });
        },
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            widget.verificationId = verificationId;
            isResending = false;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            widget.verificationId = verificationId;
            isResending = false;
          });
        },
      );
    } catch (e) {
      log(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Something went wrong try again later')));
      setState(() {
        isResending = false;
      });
    }

    resentTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
    for (var controller in otpControllers) {
      controller.dispose();
    }
  }

  @override
  void initState() {
    super.initState();
    resentTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkTheme,
        foregroundColor: lightTheme,
      ),
      backgroundColor: darkTheme,
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                strokeWidth: 1.5,
                color: primaryThemeColor,
              ),
            )
          : Padding(
              padding: EdgeInsets.all(mq.width * .035),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WrappedText(
                            text: 'Verification Code',
                            fontSize: mq.width * .055,
                            color: lightTheme),
                        sizedBoxH10,
                        WrappedText(
                            text: 'We have sent you a verification code',
                            fontSize: mq.width * .030,
                            color: Colors.grey),
                        sizedBoxH10,
                        Row(
                          children: [
                            WrappedText(
                                text: widget.phoneNumber,
                                fontSize: mq.width * .035,
                                color: textLightColor),
                            TextButton(
                              onPressed: () {
                                Get.off(() => const LoginPage());
                              },
                              child: WrappedText(
                                  text: 'Change phone number?',
                                  fontSize: mq.width * .035,
                                  color: primaryThemeColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            6,
                            (index) => OtpForm(
                              controller: otpControllers[index],
                            ),
                          ),
                        ),
                        sizedBoxH20,
                        Row(
                          children: [
                            WrappedText(
                                text: 'Resend code after',
                                fontSize: mq.width * .030,
                                color: Colors.grey),
                            TextButton(
                                onPressed: () {},
                                child: WrappedText(
                                    text: '00:${countdown.toString()}',
                                    fontSize: mq.width * .030,
                                    color: primaryThemeColor))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        NavigateButtons(
                          navigateText: 'Continue',
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          toNavigate: () => _submitOtpNumber(context),
                        ),
                        sizedBoxH10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WrappedText(
                                text: 'Didn\'t you receive any code? ',
                                fontSize: mq.width * .035,
                                color: textLightColor),
                            TextButton(
                              onPressed: () =>
                                  countdown < 1 ? resendOtp() : null,
                              child: isResending
                                  ? CircularProgressIndicator(
                                      strokeWidth: 1.5,
                                      color: primaryThemeColor,
                                    )
                                  : WrappedText(
                                      text: 'Resend now',
                                      fontSize: mq.width * .040,
                                      color: countdown < 1
                                          ? primaryThemeColor
                                          : Colors.grey),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class OtpForm extends StatelessWidget {
  final TextEditingController controller;

  const OtpForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mq.width * .11,
      height: mq.width * .11,
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '';
          }
          if (!RegExp(r'^[0-9]$').hasMatch(value)) {
            return '';
          }
          return null;
        },
        style: TextStyle(
            fontFamily: 'Poppins',
            color: textLightColor,
            fontSize: mq.width * .055),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: mq.width * .0),
          errorStyle: const TextStyle(height: 0), // Hide the error text
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
