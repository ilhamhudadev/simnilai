import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/profile/controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (ProfileController controller) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 79, 27, 125),
          body: Container(
            child: Stack(
              children: [
                Container(
                  width: AppSize.screenWidth,
                  height: 500,
                  margin: EdgeInsets.only(
                    top: 200,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.abukusuka,
                  ),
                ),
                ppkiri(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ppkanan(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget ppkiri() {
    return Container(
      width: 350,
      height: 400,
      margin: EdgeInsets.only(top: 100, left: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 236, 251),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: AppColors.abukolom,
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.person,
                size: 100,
              )),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color.fromARGB(243, 234, 224, 249),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "NPM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("21200011")
                ],
              )),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 1),
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 227, 210, 255),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nama", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Alpin Agung nugroho")
                ],
              )),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 1),
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 234, 224, 249),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kelas", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("DDT-20/21")
                ],
              )),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 1),
              decoration: BoxDecoration(
                color: Color.fromARGB(243, 227, 210, 255),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Jurusan",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("MIF/SI")
                ],
              ))
        ],
      ),
    );
  }

  Container ppkanan() {
    return Container(
      width: 800,
      height: 400,
      margin: EdgeInsets.only(top: 100, right: 70),
      padding: EdgeInsets.only(top: 50, bottom: 50),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 236, 251),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          atributkanan(),
          atributkanan(),
          atributkanan(),
          atributkanan(),
          atributkanan(),
          atributkanan(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 30,
                margin: EdgeInsets.only(top: 30, left: 30),
                decoration: BoxDecoration(
                    color: AppColors.denim,
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget table() {
    return Container(
        width: 500,
        height: 40,
        margin: EdgeInsets.only(right: 500, left: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0, color: Colors.transparent),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Program Studi"),
          Text("MIf"),
        ]));
  }

  Widget button() {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
          width: 150,
          height: 35,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: AppColors.purplePiksi,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Ubah password",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }

  Widget atributkanan() {
    return Container(
      width: 800,
      height: 30,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: AppColors.abukusuka),
    );
  }
}
