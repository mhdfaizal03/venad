import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/add_more_place_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class SelectTripPage extends StatelessWidget {
  const SelectTripPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: NextButton(
          onTap: () {
            Get.to(() => const AddMorePlacePage());
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
                          text: 'Here you go',
                          fontSize: mq.width * .055,
                          color: textDarkColor,
                          fontWeight: FontWeight.bold),
                      subtitle: WrappedText(
                          maxLines: 2,
                          text: 'Start adding your desired location',
                          fontSize: mq.width * .035,
                          color: textDarkColor,
                          fontWeight: FontWeight.bold),
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
                        left: mq.width * .025,
                        right: mq.width * .025,
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
                          sizedBoxH50,
                          const AddMoreLocationButton(),
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
                  top: mq.width * .90,
                  left: mq.width * .40,
                  child: const ReturnButton()),
            ],
          ),
        ],
      ),
    );
  }
}
