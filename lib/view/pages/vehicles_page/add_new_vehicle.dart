import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:venad/view/pages/vehicles_page/vehicle_summary.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class AddNewVehiclePage extends StatelessWidget {
  const AddNewVehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Center(
          child: NextButton(onTap: () {
            // Get.to(()=>);
          }),
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
                          'Add a new vehicle',
                          style: TextStyle(
                            fontSize: 20,
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
                )),
            Container(
              width: mq.width,
              height: mq.height * .90,
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
                            child: const Center(
                              child: Text(
                                'Add image',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              left: 10,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      sizedBoxH10,
                      Center(
                          child: TextFields(
                              label: 'Provide a name to your vehicle',
                              filledColor: const Color(0xFFD9D9D9),
                              dropdownPressed: () {})),
                      sizedBoxH10,
                      Center(
                          child: TextFields(
                              label: 'Registration Number',
                              filledColor: const Color(0xFFD9D9D9),
                              dropdownPressed: () {})),
                      sizedBoxH10,
                      Center(
                          child: TextFields(
                              label: 'Make',
                              filledColor: const Color(0xFFD9D9D9),
                              dropdownPressed: () {})),
                      sizedBoxH10,
                      Center(
                          child: TextFields(
                              label: 'Purchased on',
                              filledColor: const Color(0xFFD9D9D9),
                              dropdownPressed: () {})),
                    ]),
                  ),
                  sizedBoxH20,
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: mq.width,
                    height: mq.height * .15,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: ListTile(
                        title: const Text(
                          'Upload your vehicle files',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                        subtitle: const Text(
                          'Save your legal files fo quick acess',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Get.to(() => const VehicleSummary());
                          },
                          child: Container(
                            width: 107,
                            height: 47,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFFF7F7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.black,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
