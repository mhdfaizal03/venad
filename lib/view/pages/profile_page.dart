import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int starIndex = 0;

  List<String> roundButton = ['Posts', 'Trips', 'Vehicle', 'Clubs'];

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryThemeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: mq.width,
                height: mq.height * .2,
                color: primaryThemeColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ListTile(
                          title: const Text(
                            'Welcome, \nPrithviraj Sukumaran',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
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
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              width: mq.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, top: mq.height * .150),
                        child: Container(
                          width: mq.width,
                          height: 106,
                          decoration: ShapeDecoration(
                            color: const Color(0xE5CBCBCB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxW20,
                              Container(
                                width: 84,
                                height: 84,
                                decoration: const ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1mH1Jx.img?w=768&h=499&m=6&x=436&y=111&s=114&d=114"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: OvalBorder(),
                                ),
                              ),
                              sizedBoxW20,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'USER',
                                    style: TextStyle(
                                      color: Color(0xFF606060),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const Text(
                                    'Prithvi Raj SUkumaran',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  sizedBoxH10,
                                  Row(
                                    children: [
                                      Container(
                                        width: 87,
                                        height: 28,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF057497),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF057497)),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'FOLLOW',
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
                                      sizedBoxW10,
                                      const Text(
                                        '12,345 Followers',
                                        style: TextStyle(
                                          color: Color(0xFF767676),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxH10,
                  Container(
                    width: mq.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 68,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '"Life is like riding a bicycle. To keep your balance, you\nmust keep moving." - Albert Einstein',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  sizedBoxH10,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          4,
                          (index) => RoundButton(
                              color: starIndex == index
                                  ? const Color(0xFF953838)
                                  : const Color(0xFF939393),
                              length: roundButton.length,
                              onTap: () {},
                              text: roundButton[index])),
                    ),
                  ),
                  sizedBoxH10,
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: mq.width,
                    height: 103,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEDEBEB),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.30,
                          color: Colors.black.withOpacity(0.30000001192092896),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: mq.width,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFDDDDDD),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.40, color: Color(0x33BE9D9D)),
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: TextField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: 'Start a Post',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: mq.width * .035,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              contentPadding: const EdgeInsets.all(20),
                              prefixIcon: Container(
                                margin: const EdgeInsets.only(
                                    left: 1, top: 5, bottom: 5, right: 10),
                                width: 57,
                                height: 57,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1mH1Jx.img?w=768&h=499&m=6&x=436&y=111&s=114&d=114"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxH10,
                  Column(
                    children: List.generate(
                      3,
                      (index) => UsersCards(
                        image: const NetworkImage(
                            "https://via.placeholder.com/47x47"),
                        userName: 'SAJIN ARAKKAL',
                        captions:
                            'Jai Hind, 5 years of Patriotic travel completion....',
                        commentCount: 79,
                        likeCount: 124,
                        postImage: const NetworkImage(
                            "https://via.placeholder.com/430x307"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
