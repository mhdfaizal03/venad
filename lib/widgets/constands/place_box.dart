import 'package:flutter/material.dart';

import 'package:venad/widgets/constands/constands.dart';

import 'package:venad/widgets/textfield.dart';

class PlaceBox extends StatelessWidget {
  String PlaceName;
  ImageProvider image;

  PlaceBox({super.key, required this.PlaceName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 122,
          height: 122,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Text(
          PlaceName,
          style: const TextStyle(
            color: Color(0xFF060606),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ],
    );
  }
}

class ReturnAddStations extends StatelessWidget {
  double width;
  double height;
  String fromPlace;
  String toPlace;
  String expectedtime;
  String kms;
  ImageProvider image;
  Function() onChangePressed;
  ReturnAddStations({
    super.key,
    required this.width,
    required this.height,
    required this.fromPlace,
    required this.toPlace,
    required this.kms,
    required this.expectedtime,
    required this.image,
    required this.onChangePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            sizedBoxW10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WrappedText(
                    text: fromPlace,
                    fontSize: mq.width * .045,
                    color: textDarkColor,
                    fontWeight: FontWeight.w600),
                WrappedText(
                    text: toPlace,
                    fontSize: mq.width * .030,
                    color: textDarkColor,
                    fontWeight: FontWeight.w600),
              ],
            )
          ],
        ),
        GestureDetector(
          onTap: onChangePressed,
          child: Container(
            width: 83,
            height: 42,
            decoration: ShapeDecoration(
              color: const Color(0xFF9D9D9D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            child: Center(
              child: WrappedText(
                  text: 'Change',
                  fontSize: mq.width * .030,
                  color: textLightColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Column(
          children: [
            WrappedText(
                text: kms,
                fontSize: mq.width * .040,
                color: textDarkColor,
                fontWeight: FontWeight.w600),
            WrappedText(
                text: expectedtime,
                fontSize: mq.width * .035,
                color: textDarkColor,
                fontWeight: FontWeight.w600),
          ],
        )
      ],
    );
  }
}

class SelectedPlaceBox extends StatelessWidget {
  ImageProvider image;
  String placeName;
  SelectedPlaceBox({super.key, required this.image, required this.placeName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: mq.width,
          height: mq.width * .50,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 243,
              height: 61,
              child: Container(
                width: 243,
                height: 61,
                decoration: ShapeDecoration(
                  color: const Color(0xFF953838),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                    child: WrappedText(
                        text: placeName,
                        fontSize: mq.width * .035,
                        color: textLightColor,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlaceBoxSelect extends StatelessWidget {
  ImageProvider image;
  double ratingCount;
  String placeName;
  String timeConsume;

  PlaceBoxSelect({
    super.key,
    required this.image,
    required this.placeName,
    required this.timeConsume,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: mq.width * .53,
          height: mq.height * .28,
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: mq.width,
                height: 152,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                  width: 47,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE38F41),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      WrappedText(
                          text: '$ratingCount',
                          fontSize: mq.width * .040,
                          color: textLightColor),
                      WrappedText(
                          text: 'Rated',
                          fontSize: mq.width * .025,
                          color: textLightColor),
                    ],
                  ),
                ),
                title: WrappedText(
                    text: placeName,
                    fontSize: mq.width * .040,
                    color: textDarkColor),
                subtitle: SizedBox(
                  width: 186,
                  child: WrappedText(
                      text: 'Estimated hour : $timeConsume',
                      fontSize: mq.width * .030,
                      color: textDarkColor),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 145,
            height: 41,
            decoration: ShapeDecoration(
              color: Colors.black.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/ticket_icon.png"),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                WrappedText(
                    text: '50 rs per ticket',
                    fontSize: mq.width * .030,
                    color: textLightColor),
              ],
            ),
          ),
        ),
        Positioned(
            right: 10,
            top: 10,
            child: Opacity(
              opacity: 0.80,
              child: Container(
                width: 44,
                height: 44,
                decoration: ShapeDecoration(
                  color: const Color(0xFF939393),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Center(
                  child: Container(
                    width: 37.05,
                    height: 37.05,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}

class FoodBoxSelect extends StatelessWidget {
  ImageProvider image;
  String placeName;
  String foodType;
  int foodDay;

  FoodBoxSelect({
    super.key,
    required this.image,
    required this.placeName,
    required this.foodType,
    required this.foodDay,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: mq.width * .53,
          height: mq.height * .28,
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: mq.width,
                height: 152,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ListTile(
                trailing: Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/icons/restaurantBottom_icon.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: WrappedText(
                    text: placeName,
                    fontSize: mq.width * .040,
                    color: textDarkColor),
                subtitle: WrappedText(
                    text: 'Day $foodDay : $foodType',
                    fontSize: mq.width * .030,
                    color: textDarkColor),
              )
            ],
          ),
        ),
        Positioned(
            child: Container(
          width: 112,
          height: 29,
          decoration: const BoxDecoration(color: Color(0xFF057497)),
          child: const Center(
            child: Text(
              'Restaurant',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        )),
      ],
    );
  }
}

class UsersCards extends StatelessWidget {
  ImageProvider image;
  String userName;
  String captions;
  int commentCount;
  int likeCount;
  TextEditingController? controller;
  ImageProvider postImage;
  UsersCards({
    super.key,
    required this.image,
    required this.userName,
    required this.captions,
    required this.commentCount,
    required this.likeCount,
    required this.postImage,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        width: mq.width,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Color(0xFFD1D1D1),
            ),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 47,
                height: 47,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                  shape: const OvalBorder(),
                ),
              ),
              title: Text(
                userName,
                style: TextStyle(
                  color: blueColor,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                captions,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textDarkColor,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: mq.width,
              height: 307,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: postImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            sizedBoxH10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$commentCount Comments',
                    style: const TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    '$likeCount Likes',
                    style: const TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 51,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFC6C6C6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.50),
                        ),
                      ),
                      child: Center(
                        child: TextFields(
                          prefix: Image.asset("assets/icons/comment_icon.png"),
                          filledColor: const Color(0xFFC6C6C6),
                          radius: 50,
                          label: 'Post your comments',
                          controller: controller,
                        ),
                      ),
                    ),
                  ),
                  sizedBoxW10,
                  Container(
                    width: 52,
                    height: 52,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/likebutton_icon.png"),
                      ),
                      color: Color(0xFFD9D9D9),
                      shape: OvalBorder(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TripPromotedCards extends StatelessWidget {
  ImageProvider bigBoxImage;
  ImageProvider roundBoxImage;
  String tripHeading;
  String tripDays;
  String tripType;
  Function() knowMoreButtonPressed;
  TripPromotedCards({
    super.key,
    required this.bigBoxImage,
    required this.roundBoxImage,
    required this.tripDays,
    required this.tripHeading,
    required this.knowMoreButtonPressed,
    required this.tripType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mq.width,
      height: mq.width * .9,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: bigBoxImage,
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 104,
              height: 29,
              decoration: const BoxDecoration(color: Color(0xFF953838)),
              child: Center(
                child: Text(
                  tripType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            sizedBoxH10,
            Opacity(
              opacity: 0.70,
              child: Container(
                width: mq.width,
                height: mq.height * .15,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: roundBoxImage,
                            fit: BoxFit.cover,
                          ),
                          shape: const OvalBorder(),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Promoted trip',
                            style: TextStyle(
                              color: Color(0xFF953838),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Text(
                            tripHeading,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Text(
                            tripDays,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          sizedBoxH5,
                          GestureDetector(
                            onTap: knowMoreButtonPressed,
                            child: Container(
                              height: 37,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF953838),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    'Click here to know more details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: mq.width * .10,
                        height: mq.width * .10,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'OCT',
                              style: TextStyle(
                                color: const Color(0xFF953838),
                                fontSize: mq.width * .030,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '25',
                              style: TextStyle(
                                color: const Color(0xFF953838),
                                fontSize: mq.width * .035,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageBoxes extends StatelessWidget {
  ImageProvider image;
  String smallBoxText;
  ImageProvider smallBoxImage;
  ImageBoxes({
    super.key,
    required this.smallBoxText,
    required this.image,
    required this.smallBoxImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mq.width,
      height: 285,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Container(
                width: 160,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.68),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 41,
                        height: 41,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: smallBoxImage,
                            fit: BoxFit.cover,
                          ),
                          shape: const OvalBorder(),
                        ),
                      ),
                      sizedBoxW10,
                      Text(
                        smallBoxText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class DaysCountBox extends StatelessWidget {
  int daysCount;
  int nightCount;
  double hoursLeft;

  DaysCountBox({
    super.key,
    required this.daysCount,
    required this.nightCount,
    required this.hoursLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mq.width,
      height: 106,
      decoration: ShapeDecoration(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/dayDummy_icon.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              sizedBoxH10,
              WrappedText(
                  text: '$daysCount Days',
                  fontSize: mq.width * .035,
                  color: textLightColor),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WrappedText(
                  text: 'you have',
                  fontSize: mq.width * .040,
                  color: textLightColor),
              sizedBoxH10,
              WrappedText(
                  text: '$hoursLeft Productive hours',
                  fontSize: mq.width * .035,
                  color: textLightColor),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/nightDummy_icon.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              sizedBoxH10,
              WrappedText(
                  text: '$nightCount Nights',
                  fontSize: mq.width * .035,
                  color: textLightColor),
            ],
          )
        ],
      ),
    );
  }
}
