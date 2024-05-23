import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/view_all/connect_trip_page.dart';

import 'package:venad/widgets/constands/constands.dart';

import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class AddExperiencePage extends StatefulWidget {
  const AddExperiencePage({super.key});

  @override
  State<AddExperiencePage> createState() => _AddExperiencePageState();
}

class _AddExperiencePageState extends State<AddExperiencePage> {
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
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      width: mq.width,
                      height: 252,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://via.placeholder.com/396x252"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                    ),
                    sizedBoxH20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Rate this',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Row(
                              children: List.generate(
                                  5,
                                  (index) => GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            starIndex = index;
                                          });
                                        },
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: ShapeDecoration(
                                            color: starIndex >= index
                                                ? Colors.yellow
                                                : const Color(0xFFB4B3B3),
                                            shape: const StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.38,
                                              pointRounding: 0,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      )),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const ConnectTripPage());
                          },
                          child: Container(
                            width: 147,
                            height: 39,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF953838),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Connect with Trip',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxH20,
                    TextFields(
                      label: 'Heading',
                      filledColor: const Color(0xFFD9D9D9),
                    ),
                    sizedBoxH10,
                    Container(
                        width: mq.width,
                        height: 132,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          maxLines: 5,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                              label: Text(
                                'Tell something about the destination',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        )),
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
