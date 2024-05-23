import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/widgets/constands/constands.dart';

class EnquiryPage extends StatelessWidget {
  EnquiryPage({super.key});

  List<String> enquiryQns = [
    'Report to fellow riders',
    'Accidents',
    'Ambulance',
    'Police station'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: SizedBox(
          width: mq.width,
          height: 82,
          child: Center(
            child: SizedBox(
              width: 271,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 271,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: WrappedText(
                        text: 'Report',
                        fontSize: mq.width * .045,
                        color: textDarkColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE2E2E2),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: List.generate(
                      enquiryQns.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              width: 386,
                              height: 93,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFC4C4C4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Center(
                                child: WrappedText(
                                    text: enquiryQns[index],
                                    fontSize: mq.width * .035,
                                    color: textDarkColor),
                              ),
                            ),
                          )),
                ),
                Container(
                  width: 382,
                  height: 283,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: WrappedText(
                          text: 'Type Quick message to convey',
                          fontSize: mq.width * .035,
                          color: textDarkColor)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
