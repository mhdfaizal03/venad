import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/requests/requests.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class MapLocationPage extends StatelessWidget {
  const MapLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: StartTripButton(
          navigateText: 'Reached the location',
          notificationPressed: () {},
          startTripPressed: () {
            Get.back();
          },
          bgColor: const Color(0xFF953838),
        ),
      ),
      backgroundColor: const Color(0xFFE2E2E2),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(mq.width * .020),
          child: Container(
            width: mq.width,
            height: 756,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Requests().mapContent(context),
            ),
          ),
        ),
      ),
    );
  }
}
