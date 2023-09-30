import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/module/grade/academic/controller/academic_controller.dart';

class viewnilaiacademic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScrollController _horizontal = ScrollController(),
        _vertical = ScrollController();
    return GetBuilder<AcademicController>(
      init: AcademicController(),
      builder: (AcademicController controller) {
        return Scaffold(
            backgroundColor: AppColors.abukusuka,
            body: SingleChildScrollView(
                controller: _vertical,
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                    controller: _horizontal,
                    scrollDirection: Axis.horizontal,
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50, right: 400),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 120,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'Akademik /  nilai kelas matkul',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
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
                            margin: EdgeInsets.only(top: 20, left: 50),
                            width: 1150,
                            height: 450,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 350,
                                      height: 30,
                                      margin:
                                          EdgeInsets.only(top: 30, left: 50),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Search'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 60,
                                      height: 30,
                                      margin: EdgeInsets.only(top: 30),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.blue),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),

                                //kolom ke 1
                                headT(),
                                //kolom ke 2
                                isiTbl(context, '21200012', 'AL-RAZAQ',
                                    'DDT-20/21', '100', '90', '100', 'A'),
                                isiTbl(context, '21200011', 'ALPIN',
                                    'DDT-20/21', '100', '90', '100', 'A'),
                                isiTbl(context, '21200018', 'IBRAHIMOVIC',
                                    'DDT-20/21', '100', '90', '100', 'A'),
                                isiTbl(context, '21200017', 'NAUFAL',
                                    'DDT-20/21', '-', '-', '-', '-')
                              ],
                            ),
                          ),
                        ]),
                      ],
                    )))));
      },
    );
  }

  Widget headT() {
    return Container(
        margin: EdgeInsets.only(top: 20),
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
              children: [],
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
                title: Container(
                  padding: EdgeInsets.only(right: 15),
                  height: 60,
                  color: AppColors.purplePiksi,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Edit NIlai",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
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
                content: Container(
                  width: 700,
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'NPM',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '21200011',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nama',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Alpin Agung nugroho',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'kelas',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'DDT-20/21',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('Tugas 1'),
                            ),
                            SizedBox(
                              width: 170,
                              height: 20,
                            ),
                            Container(
                              child: Text('Tugas 2'),
                            ),
                            SizedBox(
                              width: 170,
                              height: 20,
                            ),
                            Container(
                              child: Text('Tugas akhir'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 30,
                              margin: EdgeInsets.only(left: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'TUgas 1'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Tugas 2'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Tugas Akhir'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [buttonCount("Update")],
                        ),
                      ), //isi di sini al conten yang di popup
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

Widget buttonCount(isibtn) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.save,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              isibtn,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        )),
  );
}

Widget pagination() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20),
          child: Text('Showing 1 to 40 of entries'),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 60,
                height: 25,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black),
                    left: BorderSide(width: 0.5, color: Colors.black),
                    bottom: BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: Center(
                  child: Text('previous'),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                    ),
                    color: AppColors.purplePiksi),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black),
                    left: BorderSide(width: 0.5, color: Colors.black),
                    bottom: BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black),
                    left: BorderSide(width: 0.5, color: Colors.black),
                    bottom: BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black),
                    left: BorderSide(width: 0.5, color: Colors.black),
                    bottom: BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5, color: Colors.black),
                    left: BorderSide(width: 0.5, color: Colors.black),
                    bottom: BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: Center(
                  child: Text(
                    '...',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 25,
                margin: EdgeInsets.only(right: 40, top: 40),
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                      right: BorderSide(width: 0.5, color: Colors.black)),
                ),
                child: Center(
                  child: Text(
                    'next',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
