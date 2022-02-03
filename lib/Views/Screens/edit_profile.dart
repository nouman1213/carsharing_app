// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/comman_dailog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'drawer.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController img = TextEditingController();
  File? image;
  String? imgUrl;

  upDateProfieData() async {
    try {
      if (_formKey.currentState!.validate()) {
        CommanDialog.showLoading();
        var storageImage = FirebaseStorage.instance.ref().child("file.jpg");
        var task = storageImage.putFile(image!);
        imgUrl = await (await task).ref.getDownloadURL();

        await FirebaseFirestore.instance.collection('profileData').add({
          'name': name.text,
          'mobile': mobile.text,
          'email': email.text,
          'DOB': DOB.text,
          'img': imgUrl.toString(),
        });
        CommanDialog.hideLoading();
        CommanDialog.showErrorDialog(
            description: 'UpDate Data Successfully', title: 'Edit Profile');
      } else {
        return CommanDialog.showErrorDialog(
            description: 'you cannot make the fields empty');
      }
    } catch (e) {
      'Error message:$e';
    }
  }

  /// Get from gallery
  Future _getFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );
    final pickedImageFile = File(pickedImage!.path);
    setState(() {
      image = pickedImageFile;
    });
    Get.back();
  }

  /// Get from Camera
  Future _getFromCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: ImageSource.camera,
    );
    final pickedImageFile = File(pickedImage!.path);
    setState(() {
      image = pickedImageFile;
    });
    Get.back();
  }

  // var pickedImage;
  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 35.h,
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Pic Image From",
                    style:
                        TextStyle(fontSize: 16.dp, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryRed)),
                    onPressed: () {
                      _getFromCamera();
                      //pickedImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryRed)),
                    onPressed: () {
                      // pickedImage(ImageSource.gallery);
                      _getFromGallery();
                      print('camera');
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryRed)),
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DrawerPage(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: kPrimaryRed, width: 1.w),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: kPrimaryRed,
                                  radius: 69,
                                  backgroundImage: image == null
                                      ? null
                                      : FileImage(
                                          image!,
                                        ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 1.h,
                              child: IconButton(
                                onPressed: () {
                                  imagePickerOption();
                                },
                                icon: Icon(
                                  Icons.add_a_photo_outlined,
                                  color: Colors.white,
                                  size: 4.h,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Update Picture",
                      style: TextStyle(
                        fontSize: 20.dp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 15.dp, color: Colors.grey),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: name,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    //focusedBorder: InputBorder.none,
                    //enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    hintText: "Angela Yu",
                    labelStyle: TextStyle(
                      fontSize: 16.dp,
                    ),
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'User Name  Required';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(height: 3.h),
                Text(
                  "Mobile",
                  style: TextStyle(fontSize: 15.dp, color: Colors.grey),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: mobile,
                  keyboardType: TextInputType.number,
                  maxLength: 11,
                  decoration: InputDecoration(
                    errorBorder: InputBorder.none,
                    hintText: "+923444949638",
                    labelStyle: TextStyle(
                      fontSize: 15.dp,
                    ),
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone Number  Required';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(height: 3.h),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 15.dp, color: Colors.grey),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorBorder: InputBorder.none,
                    hintText: "Abdulrehman57@hotmail.com",
                    labelStyle: TextStyle(
                      fontSize: 15.dp,
                    ),
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'email  Required';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(height: 3.h),
                Text(
                  "Date of birth",
                  style: TextStyle(fontSize: 15.dp, color: Colors.grey),
                ),
                TextFormField(
                  controller: DOB,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    errorBorder: InputBorder.none,
                    hintText: "10-12-1990",
                    labelStyle: TextStyle(
                      fontSize: 15.dp,
                    ),
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'DoB Required';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: SizedBox(
                    height: 8.h,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: buttonDesign,
                      onPressed: () {
                        upDateProfieData();
                      },
                      child: Text(
                        "Update",
                        style: TextStyle(
                          fontSize: 20.dp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
