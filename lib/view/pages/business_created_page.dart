import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/view/pages/view_all/place_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class BusinessCreatedPage extends StatefulWidget {
  const BusinessCreatedPage({super.key});

  @override
  State<BusinessCreatedPage> createState() => _BusinessCreatedPageState();
}

class _BusinessCreatedPageState extends State<BusinessCreatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: NextButton(
            textLabel: 'Go back',
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
                color: primaryThemeColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Padding(
                      padding: EdgeInsets.only(top: mq.height * .05),
                      child: const ListTile(
                        title: Text(
                          'Your business has been created',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        subtitle: Text(
                          'We will publish your business after veryfying',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Stack(
              children: [
                Container(
                  width: mq.width,
                  height: mq.height * .80,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(children: [
                          Stack(
                            children: [
                              Container(
                                  width: 396,
                                  height: 182,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFC4C4C4),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                  ),
                                  child: Container(
                                    width: 395,
                                    height: 192,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/395x192"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ]),
                      ),
                      sizedBoxH50,
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxH30,
                            Container(
                              width: mq.width,
                              height: 132,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/dummymap.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            sizedBoxH10,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: mq.height * .20,
                    left: 15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: mq.width * .28,
                          height: mq.width * .28,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        sizedBoxW10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: List.generate(
                                  5,
                                  (index) => GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: const ShapeDecoration(
                                            color: Colors.yellow,
                                            shape: StarBorder(
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
                            const Text(
                              'PARAGON HOTEL',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
