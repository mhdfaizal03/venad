import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:venad/view/pages/club_page/create_club_page.dart';
import 'package:venad/view/pages/cordinator_page.dart';
import 'package:venad/view/pages/vehicles_page/your_vehicle_page.dart';
import 'package:venad/view/pages/view_all/more_place_page.dart';
import 'package:venad/view/pages/create_trip_pages/trip_plan_page.dart';
import 'package:venad/view/pages/profile_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/constands/place_box.dart';
import 'package:venad/widgets/navigate_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  List<String> drawerItems = [
    "Profile",
    "Notifications",
    "Payments & Payouts",
    "Add your business",
    "Support service",
    "Terms & Condition",
    "Privacy Policy",
    "Logout",
  ];

  List<Widget> drawerPages = [
    const ProfilePage(),
  ];

  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      primaryThemeColor,
      const Color.fromARGB(255, 0, 132, 255),
    ],
  ).createShader(
    const Rect.fromLTWH(0.0, 80.0, 300.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'VENADU',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Container(
                width: mq.width,
                height: mq.height * .88,
                decoration: BoxDecoration(
                    color: textLightColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: List.generate(
                        drawerItems.length,
                        (index) => Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => drawerPages[index]);
                              Scaffold.of(context).closeDrawer();
                            },
                            child: Container(
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  left: 10,
                                  right: 10,
                                ),
                                width: mq.width,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: mq.width * 0.05),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: mq.width * .06,
                                        height: mq.width * .06,
                                        decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Center(
                                          child: Icon(Icons.add),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: WrappedText(
                                            maxLines: 2,
                                            text: drawerItems[index],
                                            fontSize: mq.width * .035,
                                            color: textDarkColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )),
                          );
                        }),
                      ),
                    ),
                    Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const CordinatorPage());
                          Scaffold.of(context).closeDrawer();
                        },
                        child: Container(
                          width: mq.width,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: mq.height * .140,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF00F5B5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 38,
                                  height: 37,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/homestay_icon.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                sizedBoxH20,
                                SizedBox(
                                    width: 150,
                                    child: WrappedText(
                                      text:
                                          'It’s simple to get setup\nand start earning',
                                      color: textDarkColor,
                                      fontSize: mq.width * .035,
                                      fontWeight: FontWeight.w500,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: primaryThemeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: mq.width,
              color: primaryThemeColor,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15, top: 80),
                  child: ListTile(
                      leading: Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Image.asset(
                            'assets/images/drawer.png',
                            filterQuality: FilterQuality.high,
                            width: mq.width * .080,
                          ),
                        );
                      }),
                      title: WrappedText(
                          text: 'Welcome User',
                          fontSize: mq.width * 0.055,
                          color: textDarkColor,
                          fontWeight: FontWeight.bold),
                      subtitle: WrappedText(
                          text: 'Happy to see you here',
                          fontSize: mq.width * 0.045,
                          color: textDarkColor,
                          fontWeight: FontWeight.bold),
                      trailing: GestureDetector(
                        onTap: () {
                          Get.to(() => const ProfilePage());
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Image.asset('assets/images/profile.png'),
                        ),
                      )),
                ),
              ),
            ),
            Container(
              width: mq.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
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
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: mq.width * .40),
                        child: Container(
                          width: mq.width * 0.90,
                          height: mq.height * 0.060,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                WrappedText(
                                    text: 'Upcoming Release',
                                    fontSize: mq.width * .040,
                                    color: textLightColor,
                                    fontWeight: FontWeight.w600),
                                WrappedText(
                                    text:
                                        '2024 most awaited chopper bike of india',
                                    fontSize: mq.width * .030,
                                    color: textLightColor,
                                    fontWeight: FontWeight.w600),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxH10,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * .03),
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
                                WrappedText(
                                    text: 'Where you want to explore',
                                    fontSize: mq.width * .040,
                                    color: textDarkColor,
                                    fontWeight: FontWeight.bold),
                                WrappedText(
                                    text: 'Explanation for Heading 2',
                                    fontSize: mq.width * .035,
                                    color: textDarkColor,
                                    fontWeight: FontWeight.normal),
                              ],
                            ),
                            GestureDetector(
                                onTap: () {
                                  Get.to(() => const MorePlacesPage());
                                },
                                child: const ViewAllButton())
                          ],
                        ),
                        sizedBoxH10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ),
                        sizedBoxH10,
                        Column(
                          children: [
                            WrappedText(
                                text: 'Create Centre',
                                fontSize: mq.width * .040,
                                color: textDarkColor,
                                fontWeight: FontWeight.bold),
                            WrappedText(
                                text: 'Add your favourate',
                                fontSize: mq.width * .030,
                                color: textDarkColor,
                                fontWeight: FontWeight.normal),
                          ],
                        )
                      ],
                    ),
                  ),
                  sizedBoxH20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const TripPlanPage());
                        },
                        child: Container(
                          width: mq.width * .30,
                          height: mq.height * .17,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/tripsicon.png'),
                              sizedBoxH10,
                              WrappedText(
                                text: 'Trips',
                                fontSize: mq.width * .045,
                                color: textLightColor,
                                fontWeight: FontWeight.w600,
                              ),
                              sizedBoxH10,
                              WrappedText(
                                maxLines: 2,
                                text: 'Create a trip',
                                fontSize: mq.width * .035,
                                color: textLightColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => YourVehicle());
                        },
                        child: Container(
                          width: mq.width * .30,
                          height: mq.height * .17,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/vehicleicon.png'),
                              sizedBoxH10,
                              WrappedText(
                                maxLines: 2,
                                text: 'Vehicle',
                                fontSize: mq.width * .040,
                                color: textLightColor,
                                fontWeight: FontWeight.w600,
                              ),
                              sizedBoxH10,
                              WrappedText(
                                alignment: TextAlign.center,
                                maxLines: 2,
                                text: 'Your vehicle choice',
                                fontSize: mq.width * .040,
                                color: textLightColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const CreateClub());
                        },
                        child: Container(
                          width: mq.width * .30,
                          height: mq.height * .17,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/clubicon.png'),
                              sizedBoxH10,
                              WrappedText(
                                maxLines: 2,
                                text: 'Club',
                                fontSize: mq.width * .040,
                                color: textLightColor,
                                fontWeight: FontWeight.w600,
                              ),
                              sizedBoxH10,
                              WrappedText(
                                alignment: TextAlign.center,
                                maxLines: 2,
                                text: 'Join nearest clubs',
                                fontSize: mq.width * .040,
                                color: textLightColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxH10,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
