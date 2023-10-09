import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/grade/academic/controller/academic_controller.dart';
import 'package:standard_project/module/grade/academic/data/model/academic.dart';
import 'package:standard_project/module/grade/student/controller/student_controller.dart';

class KelasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    final ScrollController _horizontal = ScrollController(),
        _vertical = ScrollController();
    return GetBuilder<AcademicController>(
      init: AcademicController(),
      builder: (AcademicController controller) {
        return MaterialApp(
            home: DefaultTabController(
                length: 4,
                child: Scaffold(
                  body: SingleChildScrollView(
                  controller: _vertical,
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    controller: _horizontal,
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: AppColors.abukusuka,
                      width: AppSize.screenWidth,
                      child: Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 1030, left: 60, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Akademik",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.purplePiksi),
                                ),
                                Text("/",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Text("Transkip kelas",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(48, 3, 87, 1)))
                              ],
                            ),
                          ),
                          Container(
                             width: 950,
                             height: 80,
                             padding: EdgeInsets.only(bottom: 20,top: 10),
                            margin: EdgeInsets.only(
                                top: 10, right: 210, bottom: 5),                                 decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: 
                            cari(),
                          ),
                          Container(
                            width: 950,
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            margin: EdgeInsets.only(
                                top: 20, right: 210, bottom: 50),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  findstudent(),
                                  headersection(),
                                  methode(controller),
                                  buttonsection()
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ))));
      },
    );
  }

  Widget methode(controller) {
    return ConstrainedBox(
      constraints: BoxConstraints(),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: controller.academiclist.length,
        itemBuilder: (context, index) {
          return midlesection(controller.academiclist[index], context);
        },
      ),
    );
  }

  Widget cari() {
    return Container(
   
      padding: EdgeInsets.only(top: 10, left: 60,),
      child: Row(children: [
        Container(
          width: 360,
          height: 30,
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'masukan kelas',
                labelStyle: TextStyle(fontSize: 12)),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 365,
          height: 30,
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'masukan matakuliah',
                labelStyle: TextStyle(fontSize: 12)),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10)
                  ),
              color: Colors.blue),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }

  Widget findstudent() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 60, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 100),
                  child: Text(
                    "Program/Jurusan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 320,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 229, 229, 1),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
                Container(
                  width: 280,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 60, right: 60 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Kelas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 620,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget headersection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "Tahun",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "Kode",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
              width: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Matakuliah",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "UTS",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "UAS",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "N.Akhir",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4),
                      right: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "SMT",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }

  Widget midlesection(academicmodel model, context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: 
            Center(child: Text("${model.No}",style: TextStyle(fontSize: 12),)),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.KodeMatakuliah}",style: TextStyle(fontSize: 12))),
          ),
          Container(
            width: 400,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Container(child: Text("${model.NamaMatakuliah}",style: TextStyle(fontSize: 12))),
          ),
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.SKS}",style: TextStyle(fontSize: 12))),
          ),
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.UTS}",style: TextStyle(fontSize: 12))),
          ),
          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.UAS}",style: TextStyle(fontSize: 12))),
          ),
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.5),
                  bottom: BorderSide(width: 0.5),
                  right: BorderSide(width: 0.5)),
            ),
            child: Center(child: Text("${model.NilaiHuruf}",style: TextStyle(fontSize: 12))),
          ),
        ],
      ),
    );
  }

  Widget buttonsection() {
    return InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.purplePiksi,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.print,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "Cetak Nilai Kelas",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
