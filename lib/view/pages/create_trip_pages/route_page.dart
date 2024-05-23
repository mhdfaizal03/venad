import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/enquiry_page.dart';
import 'package:venad/view/pages/create_trip_pages/map_location_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({
    super.key,
  });

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
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
            left: mq.width * .05,
            child: Container(
                width: mq.width * .4,
                height: mq.height * .2,
                decoration: ShapeDecoration(
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // sizedBoxH10,
                    Column(
                      children: [
                        WrappedText(
                            text: 'Buffer time left',
                            fontSize: mq.width * .030,
                            color: textLightColor),
                        WrappedText(
                            text: '120 Minutes',
                            fontSize: mq.width * .040,
                            color: textLightColor),
                      ],
                    ),
                    // sizedBoxH10,
                    Container(
                      width: 125,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // sizedBoxH10,
                    Column(children: [
                      Row(
                        children: [
                          sizedBoxW10,
                          const Icon(
                            Icons.remove_circle_outline_rounded,
                            size: 30,
                          ),
                          sizedBoxW10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WrappedText(
                                  text: 'Late time',
                                  fontSize: mq.width * .030,
                                  color: textLightColor),
                              WrappedText(
                                  text: '40 Minutes',
                                  fontSize: mq.width * .040,
                                  color: textLightColor),
                            ],
                          ),
                        ],
                      ),
                      sizedBoxH10,
                      Row(
                        children: [
                          sizedBoxW10,
                          const Icon(
                            Icons.add_circle_outline_rounded,
                            size: 30,
                          ),
                          sizedBoxW10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WrappedText(
                                  text: 'Saved',
                                  fontSize: mq.width * .030,
                                  color: textLightColor),
                              WrappedText(
                                  text: '20 Minutes',
                                  fontSize: mq.width * .040,
                                  color: textLightColor),
                            ],
                          )
                        ],
                      )
                    ])
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: StartTripButton(
          bgColor: primaryThemeColor,
          navigateText: 'Navigate to next location',
          notificationPressed: () {},
          startTripPressed: () {
            Get.to(() => const MapLocationPage());
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
                          text: 'Select your spots',
                          fontSize: mq.width * .048,
                          color: textDarkColor),
                      subtitle: WrappedText(
                          text:
                              'We are trying to show better selection from our database',
                          fontSize: mq.width * .030,
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
                          Container(
                              width: mq.width,
                              height: 106,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: WrappedText(
                                        text: 'Latest Notification',
                                        fontSize: mq.width * .035,
                                        color: textLightColor),
                                  ),
                                  ListTile(
                                    leading: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: const ShapeDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://via.placeholder.com/48x48"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                    title: WrappedText(
                                        text: 'Suhair K J',
                                        fontSize: mq.width * .055,
                                        color: redColor),
                                    subtitle: WrappedText(
                                        text:
                                            'He reached the location before 10 minutes',
                                        fontSize: mq.width * .035,
                                        color: textLightColor),
                                  ),
                                ],
                              )),
                          sizedBoxH20,
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
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => EnquiryPage());
                                    },
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFB42626),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Center(
                                        child: WrappedText(
                                            text: 'Report',
                                            fontSize: mq.width * .030,
                                            color: textLightColor),
                                      ),
                                    ),
                                  )
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
                                        2,
                                        (index) => Stack(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 30.0),
                                                child: PlaceBoxSelect(
                                                  image: const AssetImage(
                                                      'assets/images/munnar.png'),
                                                  placeName: 'MUNNAR HILLS',
                                                  timeConsume: '4 hours',
                                                  ratingCount: 4.2,
                                                )),
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
              Positioned(
                top: mq.height * .53,
                left: mq.width * .6,
                child: const ReturnButton(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
