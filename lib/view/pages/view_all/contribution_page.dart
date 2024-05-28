import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:venad/models/getx_model.dart';
import 'package:venad/view/pages/view_all/place_page.dart';
import 'package:venad/widgets/constands/constands.dart';
import 'package:venad/widgets/textfield.dart';

class ContributionPage extends StatelessWidget {
  ContributionPage({super.key});

  final ImageController contributionImagePickController =
      Get.put(ImageController());

  //  late Rx<File> image;

  void _showImageSourceActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () => contributionImagePickController.pickImage(
                    1, ImageSource.gallery),
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () => contributionImagePickController.pickImage(
                    1, ImageSource.camera),
              ),
            ],
          ),
        );
      },
    );
  }

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
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .05),
                    child: ListTile(
                      title: const Text(
                        'Thanks for your contribution',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      subtitle: const Text(
                        'The added location will be live and notified you within a day after verification',
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
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .90,
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
                          onTap: () => _showImageSourceActionSheet(context),
                          child: Obx(() {
                            return Stack(
                              children: [
                                Container(
                                  width: mq.width,
                                  height: 182,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFC4C4C4),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    image: contributionImagePickController
                                                .image1.value !=
                                            null
                                        ? DecorationImage(
                                            image: FileImage(
                                                contributionImagePickController
                                                    .image1.value!),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                                  ),
                                  child: contributionImagePickController
                                              .image1.value ==
                                          null
                                      ? const Center(
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
                                        )
                                      : null,
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
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                        sizedBoxH10,
                        Center(
                          child: TextFields(
                            label: 'Name of the start',
                            filledColor: const Color(0xFFD9D9D9),
                            dropdownPressed: () {},
                          ),
                        ),
                        sizedBoxH10,
                        Center(
                          child: TextFields(
                            label: 'Name of the destination',
                            filledColor: const Color(0xFFD9D9D9),
                            dropdownPressed: () {},
                          ),
                        ),
                        sizedBoxH10,
                        Container(
                          width: mq.width,
                          height: 132,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            maxLines: 5,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(25),
                              border: InputBorder.none,
                              label: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Tell something about the destination',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        sizedBoxH10,
                        Container(
                          width: 386,
                          height: 132,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/386x132"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'The added location will be live after verification process',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  sizedBoxH20,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => PlacePage());
                    },
                    child: Container(
                      width: 229,
                      height: 52,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF953838),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
