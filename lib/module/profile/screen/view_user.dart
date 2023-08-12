import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/profile/controller/profile_controller.dart';

class ViewUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (ProfileController controller) {
        return Scaffold(
            body: Container(
          width: AppSize.screenWidth,
          height: AppSize.screenHeight,
          decoration: BoxDecoration(color: Colors.white30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tablenyamping("Npm", 50),
              tablenyamping("nama", 0),
              tablenyamping("kelas", 0),
              tablenyamping("jenis kelamin", 0)
            ],
          ),
        ));
      },
    );
  }

  Widget tablenyamping(String value, kiri) {
    return Container(
        width: 100,
        height: 40,
        margin: EdgeInsets.only(
          left: kiri,
          top: 60,
        ),
        decoration: BoxDecoration(
            color: AppColors.abukolom,
            border: Border.all(color: AppColors.purplePiksi)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }
}
