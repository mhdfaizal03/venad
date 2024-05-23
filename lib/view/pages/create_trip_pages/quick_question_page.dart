import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/create_trip_pages/spot_select_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class QuickQuestionsPage extends StatefulWidget {
  const QuickQuestionsPage({
    super.key,
  });

  @override
  State<QuickQuestionsPage> createState() => _QuickQuestionsPageState();
}

class _QuickQuestionsPageState extends State<QuickQuestionsPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: NextButton(
          onTap: () {
            Get.to(() => const SpotSelectPage());
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
                          text: 'Some quick question',
                          fontSize: mq.width * .048,
                          color: textDarkColor,
                          fontWeight: FontWeight.w600),
                      subtitle: WrappedText(
                          maxLines: 2,
                          text:
                              'Kindly provide some question to make your trip better',
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
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(20)),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          QuestionFields(
                              hintText: 'John',
                              question: 'Create a name for your trip'),
                          sizedBoxH20,
                          QuestionFields(
                              hintText: '10:00 AM',
                              question: 'Your trip Will starts from ?'),
                          sizedBoxH20,
                          QuestionFields(
                              hintText: '1 Day',
                              question:
                                  'Total number of days you are planning ?'),
                          sizedBoxH20,
                          WrappedText(
                              text: 'Include ',
                              fontSize: mq.width * 0.035,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          sizedBoxH10,
                          Container(
                            width: mq.width,
                            height: mq.height * .085,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'Break fast',
                                    value: value),
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'Lunch',
                                    value: value),
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'Lunch',
                                    value: value),
                                sizedBoxH20,
                              ],
                            ),
                          ),
                          sizedBoxH20,
                          WrappedText(
                              text:
                                  'What type of accommodation you are looking into',
                              fontSize: mq.width * .035,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          sizedBoxH10,
                          Container(
                            width: mq.width,
                            height: mq.height * .085,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'Homestay',
                                    value: value),
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: '3 star',
                                    value: value),
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: '5 star',
                                    value: value),
                                sizedBoxH20,
                              ],
                            ),
                          ),
                          sizedBoxH20,
                          WrappedText(
                              text: 'Your vehicle of your choice',
                              fontSize: mq.width * .035,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          sizedBoxH10,
                          Container(
                            width: mq.width,
                            height: mq.height * .28,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'Rental',
                                    value: value),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: mq.width,
                                      height: mq.height * .085,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFA4A4A4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CheckBoxText(
                                                onPressed: (newValue) {
                                                  setState(() {
                                                    value = !value;
                                                  });
                                                },
                                                boxText: 'My Scross',
                                                value: value),
                                            Container(
                                              width: 77,
                                              height: 66,
                                              decoration: ShapeDecoration(
                                                image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/77x66"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: mq.width,
                                      height: mq.height * .085,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFA4A4A4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CheckBoxText(
                                                onPressed: (newValue) {
                                                  setState(() {
                                                    value = !value;
                                                  });
                                                },
                                                boxText: 'Civic',
                                                value: value),
                                            Container(
                                              width: 77,
                                              height: 66,
                                              decoration: ShapeDecoration(
                                                image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/77x66"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          sizedBoxH20,
                          WrappedText(
                              text: 'This trip is',
                              fontSize: mq.width * .035,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          sizedBoxH10,
                          Container(
                            width: mq.width,
                            height: mq.height * .085,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'can make pulic',
                                    value: value),
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'private ?',
                                    value: value),
                                sizedBoxH20,
                              ],
                            ),
                          ),
                          sizedBoxH20,
                          WrappedText(
                              text: 'What type of trip you  are planning?',
                              fontSize: mq.width * .035,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          sizedBoxH10,
                          Container(
                            width: mq.width,
                            height: mq.height * 0.130,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CheckBoxText(
                                        onPressed: (newValue) {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        boxText: 'include more sightseeing?',
                                        value: value),
                                    CheckBoxText(
                                        onPressed: (newValue) {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        boxText: 'Relaxed',
                                        value: value),
                                    sizedBoxH20,
                                  ],
                                ),
                                CheckBoxText(
                                    onPressed: (newValue) {
                                      setState(() {
                                        value = !value;
                                      });
                                    },
                                    boxText: 'Both relaxed sightseing',
                                    value: value),
                              ],
                            ),
                          ),
                          sizedBoxH20,
                          WrappedText(
                              text: 'Include buffering time',
                              fontSize: mq.width * .035,
                              color: textDarkColor,
                              fontWeight: FontWeight.w600),
                          sizedBoxH10,
                          Container(
                            width: mq.width,
                            height: mq.height * 0.130,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CheckBoxText(
                                        onPressed: (newValue) {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        boxText: 'Daily 1 hrs',
                                        value: value),
                                    CheckBoxText(
                                        onPressed: (newValue) {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        boxText: 'Daily 2 hrs',
                                        value: value),
                                    sizedBoxH20,
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CheckBoxText(
                                        onPressed: (newValue) {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        boxText: 'Total of 3 hrs',
                                        value: value),
                                    CheckBoxText(
                                        onPressed: (newValue) {
                                          setState(() {
                                            value = !value;
                                          });
                                        },
                                        boxText: 'Total of 3 hrs',
                                        value: value),
                                    sizedBoxH10,
                                  ],
                                ),
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
