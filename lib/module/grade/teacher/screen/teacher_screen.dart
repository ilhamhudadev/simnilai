import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/module/grade/teacher/controller/teacher_controller.dart';
import 'package:standard_project/module/grade/teacher/data/model/teacherModel.dart';

class TeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TeacherController>(
      init: TeacherController(),
      builder: (TeacherController controller) {
        return Scaffold(
            backgroundColor: AppColors.abukusuka,
            body: SingleChildScrollView(
              child: Container(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 100, right: 400),
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
                                'Dosen / Import nilai',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
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
                        margin: EdgeInsets.only(top: 20, left: 60),
                        width: 1250,
  
                        child: Column(
                          children: [
                            Row(
                              children: [
                                  Container(
                                    width: 350,
                                    height: 30,
                                    margin: EdgeInsets.only(top: 30, left: 50),
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
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.blue),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                buttonimport(context)
                              ],
                            ),
            
                            //kolom ke 1
                            headT(),
                            //kolom ke 2
                            Container(
                              constraints: BoxConstraints(minHeight: 0),
                              child: ListView.builder(shrinkWrap: true,
                                itemCount: controller.Lteach.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext context,int index){
                                  return Center(
                                    child: isiTbl(controller.Lteach[index], context),
                                  );
                                }),
                            ),
                                Container(
                                  margin: EdgeInsets.only(top: 175),
                                  child: pagination(),
                                  ),
                            
                          ],
                        )),
                  ]),
                ],
              )),
            ));
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
                child: Text("TUGAS I"),
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
                child: Text("TUGAS II"),
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
                child: Text("Kehadiran"),
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
              width: 75,
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

  Widget isiTbl(Mteach model,context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.npm}"),
        ),
      ),
      Container(
        width: 300,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.nama}"),
        ),
      ),
      Container(
        width: 150,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.kelas}"),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.tugas1}"),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.tugas2}"),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.kehadiran}"),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.uts}"),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.uas}"),
        ),
      ),
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(width: 1), bottom: BorderSide(width: 1))),
        child: Center(
          child: Text("${model.nakhir}"),
        ),
      ),
      Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 1),
                  bottom: BorderSide(width: 1),
                  right: BorderSide(width: 1))),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 13),
                  child: Row(
                    children: [
                      button(context),
                    ],
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
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mata Kuliah',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'LA4621 - Logika Algoritma',
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
                              child: Text('Tugas I'),
                            ),
                            SizedBox(
                              width: 170,
                              height: 20,
                            ),
                            Container(
                              child: Text('Tugas II'),
                            ),
                            SizedBox(
                              width: 170,
                              height: 20,
                            ),
                            Container(
                              child: Text('Kehadiran'),
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
                                    labelText: 'Tugas I..'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Tugas II..'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Kehadiran...'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                       Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('UTS'),
                            ),
                            SizedBox(
                              width: 170,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 28),
                              child: Text('UAS'),
                            ),
                            SizedBox(
                              width: 170,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 28),
                              child: Text('Nilai akhir'),
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
                                    labelText: 'Input Nilai UTS...'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Input Nilai UAS....'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nilai Akhir'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(
                        margin: EdgeInsets.only(top: 25),
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
 Widget buttonimport(context) {
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
                          "Import Nilai Perkuliahan",
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
                  width: 800,
                  height: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Download Format',style:
                        TextStyle(fontSize: 10, color: Colors.blue),
                     ),
                     Divider(),
                     Row(
                      children: [
                        Text('File nilai*.xls', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        Text('(pastikan file excel sesuai dengan format/download template)', style: TextStyle(fontSize: 15, color: Colors.red),),
                      
                        
                        
                      ],
                     ),
                     Container(
                      child: Row(
                        children: [
                          Container(
                      margin: EdgeInsets.only(top: 8),
                      width: 700,
                      height: 25,
                      decoration: BoxDecoration(color: Colors.white,border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                      right: BorderSide(width: 0.5, color: Colors.black)
                    ),),
                      child: Row(
                        children: [
                          Text('   Pilih File Excel', style: TextStyle(fontSize: 10),),

                        ],
                      ),
                    
                      
                     ),
                     Container(
                      margin: EdgeInsets.only(top: 8),
                      width: 85,
                      height: 25,
                      decoration: BoxDecoration(color: AppColors.abukusuka, border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                      right: BorderSide(width: 0.5, color: Colors.black)
                    ),),
                      child: Text('      Browse', style: TextStyle(fontSize: 13),),
                     )
                        ],
                      ),
                     ),
                     Column(
                      children: [
                        Row(
                          children: [
                            Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
                          child: 
                          Icon(Icons.check_sharp,
                          color: Colors.white,)
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 8),
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(5)),
                          child: 
                          Icon(Icons.restore_sharp,
                          color: Colors.white,)
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 8),
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(5)),
                          child: 
                          Icon(Icons.cancel_outlined,
                          color: Colors.white,)
                        )
                          ],
                        ),
                         
                      ],
                     )
                    ],
                  )
                ),

              );
            });
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 60,
        height: 30,
        margin: EdgeInsets.only(top: 30),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green),
            child: Icon(
            Icons.file_copy,
            color: Colors.white,
            size: 20,
        ),
      ),
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
