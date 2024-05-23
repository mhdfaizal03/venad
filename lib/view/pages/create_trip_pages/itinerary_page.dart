import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/route_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class ItineraryPage extends StatefulWidget {
  const ItineraryPage({
    super.key,
  });

  @override
  State<ItineraryPage> createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  bool value = false;
  int selectedIndex = 0;
  int daysIndex = 0;
  List<String> items = [
    'Sight Seeing',
    'Foods',
    'Stay',
    'Tickets & Fee',
  ];
  List<String> days = [
    'Day 1',
    'Day 2',
    'Day 3',
    'Day 4',
  ];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: mq.width * .07,
              child: Container(
                width: 150,
                height: 177,
                decoration: ShapeDecoration(
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WrappedText(
                          text: 'it\'s 10:00 AM',
                          fontSize: mq.width * .040,
                          color: textLightColor),
                      Container(
                        width: 137,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: greyButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WrappedText(
                              text: '40 Minutes',
                              fontSize: mq.width * .040,
                              color: textLightColor),
                          WrappedText(
                              text: 'Late time',
                              fontSize: mq.width * .035,
                              color: textLightColor),
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: StartTripButton(
          navigateText: 'Start your trip',
          notificationPressed: () {},
          bgColor: primaryThemeColor,
          startTripPressed: () {
            Get.to(() => const RoutePage());
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
                          text: 'Your itinerary',
                          fontSize: mq.width * .048,
                          color: textDarkColor),
                      subtitle: WrappedText(
                          maxLines: 2,
                          text: 'we are ready up with your itenerary,.',
                          fontSize: mq.width * .038,
                          color: textDarkColor),
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
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: mq.width * .08,
                        left: mq.width * .029,
                        right: mq.width * .029,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DaysCountBox(
                            daysCount: 4,
                            nightCount: 3,
                            hoursLeft: 68,
                          ),
                          sizedBoxH10,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Wrap(
                                    direction: Axis.horizontal,
                                    children: List.generate(
                                      items.length,
                                      (index) => RoundButton(
                                          color: selectedIndex == index
                                              ? const Color(0xFF953838)
                                              : const Color(0xFF939393),
                                          length: items.length,
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = index;
                                            });
                                          },
                                          text: items[index]),
                                    )),
                              ],
                            ),
                          ),
                          sizedBoxH10,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Wrap(
                                      direction: Axis.vertical,
                                      children: List.generate(
                                        days.length,
                                        (index) => Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                daysIndex = index;
                                              });
                                            },
                                            child: Container(
                                              width: 145,
                                              height: 56,
                                              decoration: ShapeDecoration(
                                                // color: const Color(0xFF953838),
                                                color: daysIndex == index
                                                    ? const Color(0xFF953838)
                                                    : const Color(0xFF939393),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(11),
                                                ),
                                              ),
                                              child: Center(
                                                child: WrappedText(
                                                    text: days[index],
                                                    fontSize: mq.width * .035,
                                                    color: textLightColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              sizedBoxW10,
                              selectedIndex == 1
                                  ? Wrap(
                                      direction: Axis.vertical,
                                      children: List.generate(
                                        3,
                                        (index) => Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: FoodBoxSelect(
                                              image: const AssetImage(
                                                  'assets/images/munnar.png'),
                                              placeName: 'Paragon Hotel',
                                              foodType: 'Breakfast',
                                              foodDay: index + 1,
                                            )),
                                      ))
                                  : Wrap(
                                      direction: Axis.vertical,
                                      children: List.generate(
                                        3,
                                        (index) => Stack(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 45.0),
                                                child: PlaceBoxSelect(
                                                  image: const AssetImage(
                                                      'assets/images/munnar.png'),
                                                  placeName: 'MUNNAR HILLS',
                                                  timeConsume: '4 hours',
                                                  ratingCount: 4.2,
                                                )),
                                            Positioned(
                                              top: mq.height * .25,
                                              left: mq.width * .16,
                                              child: const ReturnButton(),
                                            )
                                          ],
                                        ),
                                      ))
                            ],
                          ),
                          sizedBoxH20,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
