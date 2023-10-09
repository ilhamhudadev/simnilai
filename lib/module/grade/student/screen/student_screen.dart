import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/grade/student/controller/student_controller.dart';
import 'package:standard_project/module/grade/student/data/model/student.dart';

class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    final ScrollController _horizontal = ScrollController(),
        _vertical = ScrollController();
    return GetBuilder<StudentController>(
      init: StudentController(),
      builder: (StudentController controller) {
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
                                right: 1000, left: 60  , bottom: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mahasiswa",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.purplePiksi),
                                ),
                                Text("/",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Text("Kartu Hasil Studi",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.purplePiksi))
                              ],
                            ),
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
                            child: Column(
                              children: [tabcontrol(), tabsection(controller)],
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

  Widget tabsection(controller) {
    return Column(
      children: [
        headersection(),
        methode(controller),
        lastsection(),
        buttonsection(),
      ],
    );
  }

  Widget methode(controller) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 0),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: controller.studylist.length,
        itemBuilder: (context, index) {
          return midlesection(controller.studylist[index], context);
        },
      ),
    );
  }

  Widget tabcontrol() {
    return Container(
        width: 500,
        margin: EdgeInsets.only(right: 340),
        child: TabBar(
            indicatorColor: AppColors.purplePiksi,
            labelColor: Colors.black,
            tabs: [
              Container(
                  child: Tab(
                text: "Semester 1", 
              )),
              Container(
                  child: Tab(
                text: "Semester 2",
              )),
              Container(
                  child: Tab(
                text: "Semester 3",
              )),
            ]));
  }

  Widget headersection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "No" ,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 180,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4),
                    left: BorderSide(width: 0.4),
                    bottom: BorderSide(width: 0.4)),
                color: AppColors.abukusuka),
            child: Center(
              child: Text(
                "Kode Matakuliah",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4),
                      left: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Nama Matakuliah",
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
                  "SKS",
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
                  "Nilai Huruf",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
              width: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 0.4),
                      top: BorderSide(width: 0.4),
                      bottom: BorderSide(width: 0.4),
                      right: BorderSide(width: 0.5)),
                  color: AppColors.abukusuka),
              child: Center(
                child: Text(
                  "Nilai Angka",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }

  Widget midlesection(Studymodel model, context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.No}",style: TextStyle(fontSize: 12),)),
          ),
          Container(
            width: 180,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.KodeMatakuliah}",style: TextStyle(fontSize: 12),)),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
              ),
            ),
            child: Text("${model.NamaMatakuliah}",style: TextStyle(fontSize: 12),),
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
            child: Center(child: Text("${model.SKS}",style: TextStyle(fontSize: 12),)),
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
            child: Center(child: Text("${model.UTS}",style: TextStyle(fontSize: 12),)),
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
            child: Center(child: Text("${model.UAS}",style: TextStyle(fontSize: 12),)),
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
            child: Center(child: Text("${model.NilaiHuruf}",style: TextStyle(fontSize: 12),)),
          ),
          Container(
            width: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5),
                right: BorderSide(width: 0.5),
              ),
            ),
            child: Center(child: Text("${model.NilaiAngka}",style: TextStyle(fontSize: 12),)),
          ),
        ],
      ),
    );
  }

  Widget lastsection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.5), bottom: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 180,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text("Total SKS :",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
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
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5), left: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5)),
            ),
            child: Text(
              "Total IPS :",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5),
                  left: BorderSide(width: 0.5),
                  right: BorderSide(width: 0.5)),
            ),
            child: Text("",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget buttonsection() {
    return InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 55, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.purplePiksi,
                    ),
                    padding: EdgeInsets.only(left: 20, right: 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.print,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Cetak KHS",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
