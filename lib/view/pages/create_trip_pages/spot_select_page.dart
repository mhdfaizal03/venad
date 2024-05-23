import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/itinerary_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class SpotSelectPage extends StatefulWidget {
  const SpotSelectPage({
    super.key,
  });

  @override
  State<SpotSelectPage> createState() => _SpotSelectPageState();
}

class _SpotSelectPageState extends State<SpotSelectPage> {
  bool value = false;
  int selectedIndex = 0;
  List<Map<String, dynamic>> items = [
    {
      'name': 'Sight Seeing',
      'images': 'assets/icons/sightSeeing_icon.png',
    },
    {
      'name': 'Foods',
      'images': 'assets/icons/foods_icon.png',
    },
    {
      'name': 'Stay',
      'images': 'assets/icons/stay_icon.png',
    },
    {
      'name': 'Tickets & Fee',
      'images': 'assets/icons/ticket_icon.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          left: mq.width * .07,
        ),
        child: Row(
          children: [
            Container(
              width: mq.width * .4,
              height: 70,
              decoration: ShapeDecoration(
                color: darkTheme,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/inviteMembers_icon.png"),
                    sizedBoxH5,
                    WrappedText(
                        text: 'Invite members',
                        fontSize: mq.width * .030,
                        color: textLightColor),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: NextButton(
          onTap: () {
            Get.to(() => const ItineraryPage());
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
                        color: textDarkColor,
                      ),
                      subtitle: WrappedText(
                          maxLines: 2,
                          text:
                              'We are trying to show better selection from our database',
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
                          sizedBoxH20,
                          selectedIndex == 1
                              ? SingleChildScrollView(
                                  child: FilteringButtons(
                                    label: 'Types of restaurant',
                                    filterText: 'People\'s Choice',
                                    onPressed: () {},
                                  ),
                                )
                              : SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      FilteringButtons(
                                        label: 'Sort by',
                                        filterText: 'Ratings',
                                        onPressed: () {},
                                      ),
                                      sizedBoxW10,
                                      FilteringButtons(
                                        label: 'Type',
                                        filterText: 'Adventure',
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                          sizedBoxH20,
                          SizedBox(
                            width: mq.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Wrap(
                                        direction: Axis.vertical,
                                        children: List.generate(
                                          items.length,
                                          (index) => Padding(
                                            padding: const EdgeInsets.all(3),
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedIndex = index;
                                                });
                                              },
                                              child: Container(
                                                  width: mq.width * .37,
                                                  height: 56,
                                                  decoration: ShapeDecoration(
                                                    // color: const Color(0xFF953838),
                                                    color:
                                                        selectedIndex == index
                                                            ? const Color(
                                                                0xFF953838)
                                                            : const Color(
                                                                0xFF939393),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              11),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          items[index]
                                                              ['images'],
                                                          width: mq.width * .09,
                                                        ),
                                                        WrappedText(
                                                            text: items[index]
                                                                ['name'],
                                                            fontSize: mq.width *
                                                                0.035,
                                                            color:
                                                                textLightColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ],
                                                    ),
                                                  )),
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
                                          5,
                                          (index) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: FoodBoxSelect(
                                                image: const AssetImage(
                                                    'assets/images/munnar.png'),
                                                placeName: 'Paragon Hotel',
                                                foodType: 'Breakfast',
                                                foodDay: selectedIndex,
                                              )),
                                        ))
                                    : Wrap(
                                        direction: Axis.vertical,
                                        children: List.generate(
                                          5,
                                          (index) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: PlaceBoxSelect(
                                                image: const AssetImage(
                                                    'assets/images/munnar.png'),
                                                placeName: 'MUNNAR HILLS',
                                                timeConsume: '4 hours',
                                                ratingCount: 4.2,
                                              )),
                                        ))
                              ],
                            ),
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
