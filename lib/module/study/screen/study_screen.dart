import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/study/data/model/matakuliah.dart';
import '../controller/study_controller.dart';

class Studyscreen extends StatelessWidget {
  @override
  Widget build(BuildContext contextmatkul) {
    AppSize().init(contextmatkul);
    return GetBuilder<StudyController>(
        init: StudyController(),
        builder: (StudyController controller) {
          controller.NextPreviousButton();

          return Scaffold(
              backgroundColor: AppColors.abukusuka,
              body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                      color: AppColors.abukusuka,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: SizedBox(
                                  height: 20,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  margin: EdgeInsets.only(
                                      left: 40, right: 40, bottom: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: cari(controller)),
                              Obx(() => Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  margin: EdgeInsets.only(left: 40, right: 40),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(children: [
                                    headertabel(),
                                    controller.filteredDataList.isNotEmpty
                                        ? Container(
                                            height: AppSize.screenHeight,
                                            child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              itemCount: controller
                                                  .filteredDataList.length,
                                              itemBuilder: (context, index) {
                                                return baris(
                                                    controller.filteredDataList[
                                                        index],
                                                    context,
                                                    BorderSide(
                                                        width: 1,
                                                        color: Colors.black),
                                                    index);
                                              },
                                            ),
                                          )
                                        : Center(
                                            child: Container(
                                            child: CircularProgressIndicator(),
                                          )),
                                    page(controller),
                                  ]))),
                            ],
                          ),
                        ],
                      ))));
        });
  }

  Widget cari(controller) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Master Data",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.purplePiksi),
              ),
              Text(" / ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text("Mata Kuliah",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColors.purplePiksi))
            ],
          ),
        ),
        Row(children: [
          Container(
            width: 288,
            height: 30,
            decoration: BoxDecoration(),
            child: TextField(
              controller: controller.searchController,
              // onChanged: (value) => c.filterDataList(value),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Masukan Kode Mata Kuliah',
                  labelStyle: TextStyle(fontSize: 12)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {},
              child: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Colors.blue),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )),
          InkWell(
              child: Container(
            width: 100,
            height: 30,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: AppColors.purplePiksi,
                borderRadius: BorderRadius.circular(15)),
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.refresh_sharp,
                  size: 20,
                  color: Colors.white,
                ),
                Text(
                  "Refresh",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          )),
          SizedBox(
            width: 20,
          )
        ])
      ]),
    );
  }

  Widget headertabel() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: 50,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    left: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('No',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 100,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('Kode',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: AppSize.screenWidth * 0.3,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('Nama Mata Kuliah',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 70,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('SKS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 70,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('SMT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 120,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('Prodi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 65,
            decoration: BoxDecoration(
                color: AppColors.abukusuka,
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('Aksi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }

  Widget baris(Data model, context, bawah, index) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(width: 1, color: Colors.black),
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: bawah)),
            child: Center(child: Text('${index + 1}')),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('${model.kodeMatkul}'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: AppSize.screenWidth * 0.3,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text(
              '${model.matkul}',
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 70,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('${model.sKS}'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 70,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('${model.smt}'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 120,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Text('${model.jurusan}'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 65,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black))),
            child: Container(
              padding: EdgeInsets.only(right: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                  width: 500,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 15),
                                        height: 50,
                                        color: AppColors.purplePiksi,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Text(
                                                "Data Dosen",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                      ),
                                      // Divider(),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 5, right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Nama Dosen',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text('Kontak Dosen',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 5, right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Seliwati',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text('081234567890',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 5, right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Agus Alim',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text('080987654321',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Container(
                                        width: 60,
                                        height: 30,
                                        margin: EdgeInsets.only(
                                            top: 25, right: 450),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: AppColors.purplePiksi),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Text(
                                                'Ok',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            );
                          });
                    },
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      width: 1,
                                      color: Colors.deepPurple,
                                    ),
                                    right: BorderSide(
                                      width: 1,
                                      color: Colors.deepPurple,
                                    ),
                                    bottom: BorderSide(
                                      width: 1,
                                      color: Colors.deepPurple,
                                    ),
                                    left: BorderSide(
                                      width: 1,
                                      color: Colors.deepPurple,
                                    ))),
                            child: Icon(
                              Icons.remove_red_eye,
                              size: 18,
                              color: Colors.deepPurple,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget page(StudyController controller) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 60),
            child: Text('Showing 1 to 70 of entries'),
          ),
          Obx(() => Container(
                margin: EdgeInsets.only(top: 10, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    controller.currentPage > 1
                        ? InkWell(
                            onTap: () {
                              controller.currentPage--;
                              controller.NextPreviousButton();
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 0.5, color: Colors.black),
                                    left: BorderSide(
                                        width: 0.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 0.5, color: Colors.black),
                                    right: BorderSide(
                                        width: 0.5, color: Colors.black)),
                              ),
                              child: Center(
                                child: Text('Previous'),
                              ),
                            ))
                        : Container(),
                    controller.currentPage !=
                            controller.filteredDataList.length - 1
                        ? InkWell(
                            onTap: () {
                              controller.currentPage++;
                              controller.NextPreviousButton();
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 0.5, color: Colors.black),
                                    left: BorderSide(
                                        width: 0.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 0.5, color: Colors.black),
                                    right: BorderSide(
                                        width: 0.5, color: Colors.black)),
                              ),
                              child: Center(
                                child: Text(
                                  'Next',
                                ),
                              ),
                            ))
                        : Container()
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
