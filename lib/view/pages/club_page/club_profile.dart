import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';

class ClubProfile extends StatefulWidget {
  const ClubProfile({super.key});

  @override
  State<ClubProfile> createState() => _ClubProfileState();
}

class _ClubProfileState extends State<ClubProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      title: WrappedText(
                          text: 'Club : Chennai Royal Riders',
                          fontSize: mq.width * .045,
                          color: textDarkColor),
                      trailing: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: mq.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(children: [
                        Stack(
                          children: [
                            Container(
                                width: 430,
                                height: 260,
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
                      sizedBoxH10,
                      Container(
                        width: mq.width,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                                    const Text(
                                      'Chennai Royal Riders',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    sizedBoxH10,
                                    Row(children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 38,
                                            height: 38,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://via.placeholder.com/38x38"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Top Fan club',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                          sizedBoxW20,
                                          Container(
                                            height: 35,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFE2E2E2)),
                                            child: Center(
                                              child: SizedBox(
                                                width: mq.width * .30,
                                                height: 18,
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Center(
                                                    child: Text(
                                                      '1,2345 Followers',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                    ]),
                                    sizedBoxH10,
                                    Row(
                                      children: [
                                        Container(
                                          height: 39,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF953838),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                          ),
                                          child: const Center(
                                              child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            child: Text(
                                              'Follow Club',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                          )),
                                        ),
                                        sizedBoxW10,
                                        Container(
                                            height: 39,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF057497),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(3)),
                                            ),
                                            child: const Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.0),
                                              child: Text(
                                                'Merchantise',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            )))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            sizedBoxH10,
                            Container(
                              width: mq.width,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'It\'s hard to live without adventure. it is hard to live without a bike ride',
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
                            ),
                            sizedBoxH10,
                            const ListTile(
                              title: Text(
                                'Next Trip',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              subtitle: Text(
                                'This trips are planned in this year',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            TripPromotedCards(
                              bigBoxImage: const NetworkImage(
                                  "https://via.placeholder.com/390x359"),
                              roundBoxImage: const NetworkImage(
                                  "https://via.placeholder.com/78x78"),
                              tripDays: '7 Days and 8 Nights',
                              tripHeading: 'MANALI ROAD TRIP 2024',
                              knowMoreButtonPressed: () {},
                              tripType: 'Promoted trip',
                            ),
                            sizedBoxH20,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
