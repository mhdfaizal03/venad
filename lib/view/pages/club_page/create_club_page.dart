import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/club_page/club_profile.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/widgets/constands/constands.dart';

class CreateClub extends StatelessWidget {
  const CreateClub({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(mq.width * .05),
                          child: ListTile(
                            title: const Text(
                              'CLUB PAGE HAVE TO CREATE',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.black,
                                )),
                          )),
                      Container(
                        width: mq.width,
                        height: mq.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const ClubProfile());
                            },
                            child: Container(
                              width: 126,
                              height: 39,
                              decoration: ShapeDecoration(
                                color: primaryThemeColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Club Profile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
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
