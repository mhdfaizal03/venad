import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/select_trip_page.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/widgets/constands/constands.dart';

class TripPlanPage extends StatelessWidget {
  const TripPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: primaryThemeColor,
        onPressed: () {
          Get.to(() => const HomePage(), transition: Transition.cupertino);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/floatinghomeicon.png',
            ),
            const Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      backgroundColor: primaryThemeColor,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: mq.width,
                color: primaryThemeColor,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(top: mq.width * .2, bottom: 10),
                          child: WrappedText(
                              text: 'Plan a trip',
                              fontSize: mq.width * .080,
                              color: textDarkColor,
                              fontWeight: FontWeight.w500)),
                      Container(
                        width: mq.width,
                        // height: mq.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              sizedBoxH10,
                              Container(
                                width: mq.width,
                                height: 377,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/385x377"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    width: mq.width,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: mq.width * .055),
                                    height: 93,
                                    decoration: ShapeDecoration(
                                      color: const Color(0x99D9D9D9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(() => const SelectTripPage());
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: mq.width * .022),
                                          width: mq.width,
                                          height: 70,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                          ),
                                          child: Center(
                                            child: Opacity(
                                              opacity: 0.60,
                                              child: WrappedText(
                                                  text:
                                                      'Where you want to go ?',
                                                  fontSize: mq.width * .045,
                                                  color: textDarkColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              sizedBoxH10,
                              Container(
                                width: mq.width,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF00F5B5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: ListTile(
                                    title: WrappedText(
                                        text: 'Create a trip for me',
                                        fontSize: mq.width * .050,
                                        color: textDarkColor,
                                        fontWeight: FontWeight.w600),
                                    subtitle: WrappedText(
                                        text:
                                            'Use of Ai tool for your customized trip',
                                        fontSize: mq.width * 0.035,
                                        color: textDarkColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              sizedBoxH10,
                              Container(
                                width: mq.width,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF00F5B5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: ListTile(
                                    title: WrappedText(
                                        text: 'Join with a team',
                                        fontSize: mq.width * .050,
                                        color: textDarkColor,
                                        fontWeight: FontWeight.w600),
                                    subtitle: WrappedText(
                                        text:
                                            'Search your nearby trip  already created',
                                        fontSize: mq.width * 0.035,
                                        color: textDarkColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              sizedBoxH10,
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
