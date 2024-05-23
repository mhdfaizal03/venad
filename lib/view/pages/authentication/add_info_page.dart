import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class AddInfoPage extends StatelessWidget {
  const AddInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WrappedText(
                    fontWeight: FontWeight.bold,
                    fontSize: mq.width * .045,
                    text: 'Add your info',
                    color: textLightColor,
                  ),
                  sizedBoxH20,
                  TextFields(label: 'First Name', dropdownPressed: () {}),
                  sizedBoxH20,
                  TextFields(label: 'Last Name', dropdownPressed: () {}),
                  sizedBoxH20,
                  TextFields(label: 'Date of Birth', dropdownPressed: () {}),
                  sizedBoxH20,
                  WrappedText(
                    maxLines: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: mq.width * .030,
                    text:
                        'To sign up, you need to be at least 18. Other people who use venadu wont see your date fo birth.',
                    color: textLightColor,
                  ),
                  sizedBoxH20,
                  WrappedText(
                    maxLines: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: mq.width * .030,
                    text:
                        'By selecting Free and continue, I Agrees Venadus terms & service, Payment Terms of service and Anti Discrimination Policy and akhnloledgement the privacy policy.',
                    color: textLightColor,
                  ),
                  sizedBoxH30,
                  NavigateButtons(
                    toNavigate: () {
                      Get.to(() => HomePage());
                    },
                    navigateText: 'Continue',
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
