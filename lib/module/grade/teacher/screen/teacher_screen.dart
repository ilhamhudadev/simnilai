import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/module/grade/teacher/controller/teacher_controller.dart';

class TeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TeacherController>(
      init: TeacherController(),
      builder: (TeacherController controller) {
        return Scaffold(
            backgroundColor: AppColors.abukusuka,
            body: Container(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, right: 950),
                  width: 200,
                  height: 50,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 8),
                                child: Text(
                                  "VIEW TEACHER",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 120, right: 400),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black),
                                color: Colors.white),
                            child: TextField(
                              decoration: InputDecoration(labelText: ''),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 30,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue),
                            child: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 206, 224, 255),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color.fromARGB(255, 50, 201, 30)),
                                  child: Icon(Icons.file_copy),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      margin: EdgeInsets.only(top: 10, left: 50),
                      width: 1150,
                      height: 450,
                      child: Column(
                        children: [
                          //kolom ke 1
                          headT(),
                          //kolom ke 2
                          isiTbl(context, '21200012', 'AL-RAZAQ', 'DDT-20/21',
                              '100', '90', '100', 'A'),
                          isiTbl(context, '21200011', 'ALPIN', 'DDT-20/21',
                              '100', '90', '100', 'A'),
                          isiTbl(context, '21200018', 'IBRAHIMOVIC',
                              'DDT-20/21', '100', '90', '100', 'A'),
                          isiTbl(context, '21200017', 'NAUFAL', 'DDT-20/21',
                              '-', '-', '-', '-')
                        ],
                      )),
                ]),
              ],
            )));
      },
    );
  }

  Widget headT() {
    return Container(
        margin: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1))),
              child: Center(
                child: Text("NPM"),
              ),
            ),
            Container(
              width: 300,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1))),
              child: Center(
                child: Text("NAMA"),
              ),
            ),
            Container(
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1))),
              child: Center(
                child: Text("Kelas"),
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1))),
              child: Center(
                child: Text("TUGAS"),
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                    top: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
              child: Center(
                child: Text("UTS"),
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                    top: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
              child: Center(
                child: Text("UAS"),
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                    top: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
              child: Center(
                child: Text("NILAI AKHIR"),
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.abukusuka,
                  border: Border(
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                      right: BorderSide(width: 1))),
              child: Center(
                child: Text("ACTION"),
              ),
            )
          ],
        ));
  }

  Widget isiTbl(context, npm, nama, kelas, tugas, uts, uas, akhir) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(npm),
        ),
      ),
      Container(
        width: 300,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(nama),
        ),
      ),
      Container(
        width: 150,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(kelas),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(tugas),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(uts),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(uas),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text(akhir),
        ),
      ),
      Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 1),
                  bottom: BorderSide(width: 1),
                  right: BorderSide(width: 1))),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      button(context),
                    ],
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(left: 5, right: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1, color: Color.fromARGB(255, 255, 0, 0)),
                          left: BorderSide(
                              width: 1, color: Color.fromARGB(255, 255, 0, 0)),
                          bottom: BorderSide(
                              width: 1, color: Color.fromARGB(255, 255, 0, 0)),
                          right: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 255, 0, 0)))),
                  child: Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 255, 0, 0),
                    size: 20,
                  ),
                ),
              ],
            ),
          )),
    ]);
  }

  Widget button(context) {
    return InkWell(
      onTap: () {
        showDialog<void>(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext contextguru) {
              return AlertDialog(
                content: Container(
                  width: 300,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration:
                            InputDecoration(labelText: 'Input Nilai Tugas'),
                      ),
                      TextField(
                        decoration:
                            InputDecoration(labelText: 'Input Nilai UTS '),
                      ),
                      TextField(
                        decoration:
                            InputDecoration(labelText: 'Input Nilai UAS'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 50, right: 45, top: 20),
                            child: buttonCount(context, "Konfirmasi"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            });
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 25,
        height: 25,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    width: 1, color: Color.fromARGB(255, 51, 95, 240)),
                left: BorderSide(
                    width: 1, color: Color.fromARGB(255, 51, 95, 240)),
                bottom: BorderSide(
                    width: 1, color: Color.fromARGB(255, 51, 95, 240)),
                right: BorderSide(
                    width: 1, color: Color.fromARGB(255, 51, 95, 240)))),
        child: Icon(
          Icons.edit,
          color: Color.fromARGB(255, 51, 95, 240),
          size: 20,
        ),
      ),
    );
  }
}

Widget buttonCount(contaxt, isibtn) {
  return InkWell(
    onTap: () {
      Get.back();
    },
    borderRadius: BorderRadius.circular(10),
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
            isibtn,
            style: TextStyle(color: Colors.white),
          ),
        )),
  );
}
