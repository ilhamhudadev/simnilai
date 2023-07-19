import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (HomeController c) {
        return MaterialApp(
            home: DefaultTabController(
                length: 2,
                child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: AppColors.eerieblack,
                      title: Container(
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_outlined),
                            Text(
                              "MENU BAR",
                            )
                          ],
                        ),
                      ),
                    ),
                    body: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          headerTab(),
                          bodyTab(c, context),
                        ],
                      ),
                    ))));
      },
    );
  }

  Widget bodyTab(c, context) {
    return Expanded(
        child: Container(
            color: AppColors.pumpkin,
            width: AppSize.screenWidth * 0.5,
            child:
                TabBarView(children: [ViewFirst(c, context), ViewSecond()])));
  }

  Widget ViewFirst(c, context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [Text("sample View 1"), buttonCount(c, context)],
      ),
    );
  }

  Widget ViewSecond() {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [Text("sample View 2")],
      ),
    );
  }

  Widget headerTab() {
    return Container(
        color: AppColors.pumpkin,
        width: AppSize.screenWidth * 0.5,
        child: TabBar(tabs: [
          Tab(
            child: Text(
              "Semester 1",
              style: TextStyle(color: AppColors.eerieblack),
            ),
          ),
          Tab(
            child: Text(
              "Semester 2",
              style: TextStyle(color: AppColors.eerieblack),
            ),
          )
        ]));
  }

  Widget buttonCount(HomeController c, context) {
    return Center(
        child: InkWell(
            onTap: () {
              showDialog<void>(
                  context: context,
                  barrierDismissible: true, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(Icons.close)),
                            Text("Nama :"),
                            Text("Al Rozak"),
                          ],
                        ),
                      ),
                    );
                  });

              c.tambahAngkaDadu();
              c.getGanjilGenap();
            },
            borderRadius: BorderRadius.circular(30),
            child: Obx(() => Container(
                  margin:
                      EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
                  padding:
                      EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
                  decoration: BoxDecoration(
                      color: AppColors.purplePiksi,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Jumlah Angka ${c.angkaDadu}, status: ${c.statusAngkaDadu}",
                    style: TextStyle(color: AppColors.white),
                  ),
                ))));
  }
}
