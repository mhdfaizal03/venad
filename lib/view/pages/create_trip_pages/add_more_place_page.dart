import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/quick_question_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class AddMorePlacePage extends StatelessWidget {
  const AddMorePlacePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: darkTheme,
        child: NextButton(
          onTap: () {
            Get.to(() => const QuickQuestionsPage());
          },
        ),
      ),
      backgroundColor: primaryThemeColor,
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: mq.width * 0.04, top: mq.width * .1),
                    child: ListTile(
                      title: WrappedText(
                          text: 'Want to visit more cities?',
                          fontSize: mq.width * .050,
                          color: textDarkColor,
                          fontWeight: FontWeight.w600),
                      subtitle: WrappedText(
                          maxLines: 2,
                          text: 'You can include more cities to visit',
                          fontSize: mq.width * .038,
                          color: textDarkColor,
                          fontWeight: FontWeight.w600),
                      trailing: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    width: mq.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: lightTheme,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: mq.width * .08,
                        left: mq.width * .029,
                        right: mq.width * .029,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReturnAddStations(
                            onChangePressed: () {},
                            width: mq.height * .055,
                            height: mq.height * .055,
                            fromPlace: 'Your Home',
                            toPlace: 'Kalamassery',
                            kms: '101 KM',
                            expectedtime: '3 Hrs',
                            image: const NetworkImage(
                                "https://via.placeholder.com/54x54"),
                          ),
                          sizedBoxH50,
                          SelectedPlaceBox(
                              image: const NetworkImage(
                                  "https://via.placeholder.com/385x160"),
                              placeName: 'Munnar'),
                          sizedBoxH20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  WrappedText(
                                      text: '101',
                                      fontSize: mq.width * .040,
                                      color: textDarkColor,
                                      fontWeight: FontWeight.w600),
                                  WrappedText(
                                      text: '3 Hrs',
                                      fontSize: mq.width * .035,
                                      color: textDarkColor,
                                      fontWeight: FontWeight.w600),
                                ],
                              )
                            ],
                          ),
                          sizedBoxH20,
                          Stack(
                            children: [
                              SelectedPlaceBox(
                                  image: const NetworkImage(
                                      "https://via.placeholder.com/385x160"),
                                  placeName: 'Munnar'),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      )),
                                ),
                              )
                            ],
                          ),
                          sizedBoxH50,
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AddMoreLocationButton(),
                            ],
                          ),
                          sizedBoxH20,
                          Container(
                            width: 79,
                            height: 25,
                            decoration:
                                const BoxDecoration(color: Color(0xFFD9D9D9)),
                            child: Center(
                              child: WrappedText(
                                  text: 'Return to',
                                  fontSize: mq.width * .035,
                                  color: textDarkColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          sizedBoxH20,
                          ReturnAddStations(
                            onChangePressed: () {},
                            width: mq.height * .055,
                            height: mq.height * .055,
                            fromPlace: 'Your Home',
                            toPlace: 'Kalamassery',
                            kms: '101 KM',
                            expectedtime: '3 Hrs',
                            image: const NetworkImage(
                                "https://via.placeholder.com/54x54"),
                          ),
                          sizedBoxH20,
                          WrappedText(
                              text: 'How we want to make your trip ?',
                              fontSize: mq.width * .045,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          SizedBox(
                            height: mq.height * .05,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: mq.width * .42,
                  left: mq.width * .40,
                  child: const ReturnButton()),
              Positioned(
                  top: mq.width * 1.10,
                  left: mq.width * .40,
                  child: const ReturnButton()),
              Positioned(
                  top: mq.width * 1.58,
                  left: mq.width * .40,
                  child: const ReturnButton()),
            ],
          ),
        ],
      ),
    );
  }
}
