import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/view_all/contribution_page.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class MorePlacesPage extends StatelessWidget {
  const MorePlacesPage({super.key});

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
                      child: ListTile(
                          title: const Text(
                            'Become a cordinator',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          subtitle: const Text(
                            'Earn and get a badge for your effort',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Get.to(() => ContributionPage());
                            },
                            child: Container(
                              width: 100,
                              height: 60,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Colors.white,
                              ),
                              child: const Center(
                                  child: Text(
                                'Add Now',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              )),
                            ),
                          )),
                    ),
                  ),
                )),
            Container(
              width: mq.width,
              height: mq.height * .80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    title: Text(
                                      'Explore your nearby location',
                                      style: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: mq.width * .035,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      'Bettter for one day trip',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    trailing: GestureDetector(
                                      onTap: () {},
                                      child: const ViewAllButton(),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      PlaceBox(
                                          PlaceName: 'Rajastan',
                                          image: const AssetImage(
                                              'assets/images/rajasthan.png')),
                                      PlaceBox(
                                          PlaceName: 'Tamil Nadu',
                                          image: const AssetImage(
                                              'assets/images/tamilnadu.png')),
                                      PlaceBox(
                                          PlaceName: 'Kerala',
                                          image: const AssetImage(
                                              'assets/images/kerala.png')),
                                    ],
                                  )
                                ],
                              ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
