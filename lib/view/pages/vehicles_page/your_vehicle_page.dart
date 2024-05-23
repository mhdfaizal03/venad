import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:venad/view/pages/vehicles_page/add_new_vehicle.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class YourVehicle extends StatelessWidget {
  YourVehicle({super.key});

  List myVehicles = [
    "https://www.cardekho.com/used-cars+in+kerala",
    "https://www.quikr.com/cars/used+cars+kerala+w1146900",
    "https://www.quikr.com/bikes-scooters/used+used-electric-scooter-in-kerala+bikes-scooters+kochi+x876",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Center(
          child: NextButton(onTap: () {
            Get.to(() => const AddNewVehiclePage());
          }),
        ),
      ),
      backgroundColor: primaryThemeColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: mq.width,
                    // height: mq.height,
                    color: primaryThemeColor,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(mq.width * .05),
                            child: const Text(
                              'Your Vehicle',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Row(
                                    children: List.generate(
                                  3,
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      width: 89,
                                      height: 89,
                                      decoration: const ShapeDecoration(
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 3,
                                              color: Color(0xFF953838)),
                                        ),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 77,
                                          height: 77,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                myVehicles[index],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: const OvalBorder(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                                sizedBoxW10,
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 89,
                                      height: 89,
                                      decoration: const ShapeDecoration(
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 3,
                                              color: Color(0xFF953838)),
                                        ),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 77,
                                          height: 77,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFC4C4C4),
                                            shape: OvalBorder(),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Add new',
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: mq.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  ImageBoxes(
                                    smallBoxText: 'BMW',
                                    image: const NetworkImage(
                                      "https://via.placeholder.com/430x285",
                                    ),
                                    smallBoxImage: const NetworkImage(
                                      "https://via.placeholder.com/41x41",
                                    ),
                                  ),
                                  sizedBoxH20,
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: mq.width,
                                          height: 82,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF953838),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                          ),
                                          child: Center(
                                            child: ListTile(
                                              title: const Text(
                                                'Vehicle Name : Hiccups',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                              subtitle: const Text(
                                                'Registration : KL 08 BX 1289',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                              trailing: Container(
                                                width: 119,
                                                height: 45,
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'View files',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
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
                                        ),
                                        sizedBoxH20,
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'History About',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Vehicle',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF953838),
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      sizedBoxW30,
                                                      const Text(
                                                        'Trips',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 0,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              sizedBoxH10,
                                              Container(
                                                width: mq.width,
                                                height: 64,
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFC9C9C9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      'Total rides using Hiccups -',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    Text(
                                                      '5',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              sizedBoxH10,
                                              Container(
                                                width: mq.width,
                                                height: 64,
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFC9C9C9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      'Total Km Drive',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    Text(
                                                      '4,456',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
              Positioned(
                left: mq.width * .02,
                top: mq.height * .56,
                child: Container(
                  width: 110,
                  height: 35,
                  decoration: const BoxDecoration(color: Color(0xFF099F18)),
                  child: const Center(
                    child: Text(
                      'Perfect for ',
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
        ],
      ),
    );
  }
}
