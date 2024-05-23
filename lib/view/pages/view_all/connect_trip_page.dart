import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/view_all/contribution_page.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class ConnectTripPage extends StatefulWidget {
  const ConnectTripPage({super.key});

  @override
  State<ConnectTripPage> createState() => _ConnectTripPageState();
}

class _ConnectTripPageState extends State<ConnectTripPage> {
  int starIndex = 0;

  List<String> trips = ['Hill areas', 'Nature', 'Trecking'];

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: NextButton(
            textLabel: 'Submit',
            onTap: () {
              Get.back();
            }),
      ),
      backgroundColor: primaryThemeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: mq.height * .2,
                color: primaryThemeColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: mq.height * .05),
                        child: const Text(
                          'Add your experience',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              width: mq.width,
              height: mq.height * .80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Created trips',
                        style: TextStyle(
                          color: Color(0xFF953838),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      subtitle: Text(
                        'This trips are created by you',
                        style: TextStyle(
                          color: Color(0xFF2F2F2F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    sizedBoxH20,
                    Container(
                      width: 391,
                      height: 90,
                      decoration: const BoxDecoration(color: Color(0xFF953838)),
                      child: Center(
                        child: ListTile(
                          leading: Container(
                            width: 60,
                            height: 60,
                            decoration: const ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/63x63"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                          title: const Text(
                            'Munnar Diarries',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          subtitle: const Text(
                            '27/10/2023',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxH10,
                    Container(
                      width: 391,
                      height: 90,
                      decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                      child: Center(
                        child: ListTile(
                          leading: Container(
                            width: 60,
                            height: 60,
                            decoration: const ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/63x63"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                          title: const Text(
                            'Munnar Diarries',
                            style: TextStyle(
                              color: Color(0xFF953838),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          subtitle: const Text(
                            '27/10/2023',
                            style: TextStyle(
                              color: Color(0xFF953838),
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxH10,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
