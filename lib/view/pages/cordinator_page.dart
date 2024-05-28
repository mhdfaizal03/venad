import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:venad/models/getx_model.dart';
import 'package:venad/view/pages/business_created_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/navigate_buttons.dart';
import 'package:venad/widgets/textfield.dart';

class CordinatorPage extends StatefulWidget {
  const CordinatorPage({super.key});

  @override
  State<CordinatorPage> createState() => _CordinatorPageState();
}

class _CordinatorPageState extends State<CordinatorPage> {
  final ImageController profileImagePickerController =
      Get.put(ImageController());
  final ImageController bannerImagePickerController =
      Get.put(ImageController());

  List<Map<String, dynamic>> classifiedDatas = [
    {"items": "Garrage", "icons": "assets/icons/garage_icon.png"},
    {"items": "Hotel", "icons": "assets/icons/hotel_icon.png"},
    {"items": "Home stay", "icons": "assets/icons/stay_icon.png"},
    {"items": "Foods", "icons": "assets/icons/foods_icon.png"},
    {"items": "Fuel", "icons": "assets/icons/homestay_icon.png"},
    {"items": "Camp", "icons": "assets/icons/foods_icon.png"},
  ];

  int selectedIndex = 0;

  void _showImageSourceActionSheet(
      BuildContext context, ImageController controller, int imageNumber) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Gallery'),
                  onTap: () {
                    controller.pickImage(imageNumber, ImageSource.gallery);
                    Get.back();
                  }),
              ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    controller.pickImage(imageNumber, ImageSource.camera);
                    Get.back();
                  }),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: NextButton(
          textLabel: 'Create your business',
          onTap: () {
            Get.to(() => const BusinessCreatedPage());
          },
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
                  padding: const EdgeInsets.all(15.0),
                  child: Padding(
                    padding: EdgeInsets.only(top: mq.height * .05),
                    child: ListTile(
                      title: const Text(
                        'Become a Cordinator',
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
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () => _showImageSourceActionSheet(
                                  context, bannerImagePickerController, 2),
                              child: Obx(() {
                                return Stack(
                                  children: [
                                    Container(
                                      width: mq.width,
                                      height: 182,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFC4C4C4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(19),
                                        ),
                                        image: bannerImagePickerController
                                                    .image2.value !=
                                                null
                                            ? DecorationImage(
                                                image: FileImage(
                                                    bannerImagePickerController
                                                        .image2.value!),
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                      ),
                                      child: bannerImagePickerController
                                                  .image2.value ==
                                              null
                                          ? Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    "assets/icons/imageDummy_icon.png"),
                                                sizedBoxH10,
                                                const Text(
                                                  'Add Banner image',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            )
                                          : null,
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.height * .2,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: TextFields(
                                label: 'Name of the business',
                                filledColor: const Color(0xFFD9D9D9),
                                dropdownPressed: () {},
                              ),
                            ),
                            sizedBoxH20,
                            const Text(
                              'Classified under',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Wrap(
                              direction: Axis.horizontal,
                              children: List.generate(
                                classifiedDatas.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                        },
                                        child: Container(
                                          width: 68,
                                          height: 68,
                                          decoration: ShapeDecoration(
                                            color: selectedIndex == index
                                                ? const Color(0xFF953838)
                                                : const Color(0xFF9D9D9D),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(13),
                                            ),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: 44,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      classifiedDatas[index]
                                                          ["icons"]),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        classifiedDatas[index]["items"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxH20,
                            const Text(
                              'Add your location',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            sizedBoxH10,
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
                  top: mq.height * .17,
                  left: 15,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => _showImageSourceActionSheet(
                            context, profileImagePickerController, 3),
                        child: Obx(() {
                          return Container(
                            width: mq.width * .28,
                            height: mq.width * .28,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: const OvalBorder(),
                              image:
                                  profileImagePickerController.image3.value !=
                                          null
                                      ? DecorationImage(
                                          image: FileImage(
                                              profileImagePickerController
                                                  .image3.value!),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                            ),
                            child: profileImagePickerController.image3.value ==
                                    null
                                ? Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            "assets/icons/imageDummy_icon.png"),
                                        sizedBoxH10,
                                        const Opacity(
                                          opacity: 0.50,
                                          child: Text(
                                            'Add profile',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : null,
                          );
                        }),
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
