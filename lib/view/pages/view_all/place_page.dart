import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/view_all/add_experience_page.dart';
import 'package:venad/view/pages/home_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class PlacePage extends StatelessWidget {
  PlacePage({super.key});

  List<String> trips = ['Hill areas', 'Nature', 'Trecking'];

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
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
          Stack(
            children: [
              Container(
                width: mq.width,
                height: mq.height * 1.7,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: mq.height * 0.15,
                      color: primaryThemeColor,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ListTile(
                            title: const Text(
                              'Munnar',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Get.off(() => const HomePage(),
                                      transition: Transition.cupertino);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: mq.height * .12,
                child: Container(
                  width: mq.width,
                  height: 260,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/home1.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: mq.height * .45,
                width: mq.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: mq.width * .02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                                'Munnar',
                                style: TextStyle(
                                  color: Color(0xFF953838),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const AddExperiencePage());
                            },
                            child: Container(
                              width: 174,
                              height: 39,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF953838),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Add your experience',
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
                          ),
                        ],
                      ),
                      sizedBoxH20,
                      SizedBox(
                        width: mq.width,
                        child: const Text(
                          maxLines: 4,
                          'Munnar is a town in the Western Ghats mountain range in India\'s Kerala state. A hill station and former resort for the British Raj elite, it\'s surrounded by rolling hills dotted with tea plantations established in the late 19th century.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      sizedBoxH10,
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: mq.width,
                        height: 87,
                        decoration: const BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 51,
                                  height: 51,
                                  decoration: const ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/51x51"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                sizedBoxW10,
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Contributer',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'Sajin Arakkal',
                                      style: TextStyle(
                                        color: Color(0xFF953838),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Contribution',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    color: Color(0xFF953838),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Votes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  '1,143',
                                  style: TextStyle(
                                    color: Color(0xFF953838),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                      ),
                      sizedBoxH20,
                      const Text(
                        'Good for',
                        style: TextStyle(
                          color: Color(0xFF953838),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      sizedBoxH10,
                      SizedBox(
                        width: mq.width,
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            trips.length,
                            (index) => Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 100,
                              height: 37,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                              child: Center(
                                child: Text(
                                  trips[index],
                                  style: const TextStyle(
                                    color: Color(0xFF161616),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: mq.width,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                            children: List.generate(
                                2,
                                (index) => Column(
                                      children: [
                                        ListTile(
                                          contentPadding:
                                              const EdgeInsets.all(0),
                                          title: const Text(
                                            'Explore your nearby location',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                          subtitle: const Text(
                                            'Bettter for one day trip',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
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
                      ),
                      sizedBoxH20,
                      Container(
                        width: mq.width,
                        height: 260,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/home1.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
