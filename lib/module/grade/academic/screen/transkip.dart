import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/api/api_model.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/grade/academic/controller/class_controller.dart';
import 'package:standard_project/module/grade/academic/controller/transkip_controller.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/transkipmodel.dart';
import 'package:standard_project/module/profile/data/model/student_profile_model.dart';
import 'package:pdf/widgets.dart' as pw;

class TranskripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    final ScrollController _horizontal = ScrollController(),
        _vertical = ScrollController();
    var totalSKS = 0;
    var avgNilaiTotal = 0;
    return GetBuilder<TranscriptApiController>(
      init: TranscriptApiController(),
      builder: (TranscriptApiController controller) {
        return Scaffold(
            backgroundColor: Colors.grey.withOpacity(0.8),
            body:
                //  FutureBuilder<StudentTranscriptModel>(
                //   future: controller.futuretranskipData(),
                //   builder: (context, Response) {
                //     if (Response.hasData) {
                //       var value = Response.data!.data!;
                //       return
                MaterialApp(
                    color: Colors.grey.withOpacity(0.8),
                    home: DefaultTabController(
                        length: 4,
                        child: Scaffold(
                            backgroundColor: AppColors.abukusuka,
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
                                        width: 950,
                                        height: 80,
                                        padding: EdgeInsets.only(
                                            bottom: 20, top: 10),
                                        margin: EdgeInsets.only(
                                            top: 10, right: 210, bottom: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 20,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: cari(controller),
                                      ),
                                      Container(
                                        width: 950,
                                        padding: EdgeInsets.only(
                                            top: 20, bottom: 20),
                                        margin: EdgeInsets.only(
                                            top: 20, right: 210, bottom: 50),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.8),
                                              spreadRadius: 5,
                                              blurRadius: 20,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Obx(
                                          () => Container(
                                            child: Column(
                                              children: [
                                                controller.dataMahasiswa
                                                        .isNotEmpty
                                                    ? findstudent(controller)
                                                    : Container(),
                                                headersection(),
                                                controller.filteredDataList
                                                        .isNotEmpty
                                                    ? ListView.builder(
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        controller: controller
                                                            .scrollController,
                                                        shrinkWrap: true,
                                                        itemCount: controller
                                                            .filteredDataList
                                                            .length,
                                                        itemBuilder:
                                                            ((context, index) {
                                                          var value = controller
                                                              .filteredDataList;
                                                          totalSKS = totalSKS +
                                                              int.parse(
                                                                  value[index]
                                                                      .sks!);
                                                          avgNilaiTotal = avgNilaiTotal +
                                                              int.parse(controller.checkNilaiTotal(
                                                                  value[index]
                                                                      .partisipasi,
                                                                  value[index]
                                                                      .tugas1,
                                                                  value[index]
                                                                      .tugas2,
                                                                  value[index]
                                                                      .nilaiuts,
                                                                  value[index]
                                                                      .nilaiuas));
                                                          return Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 40,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${index + 1}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                                Container(
                                                                  width: 180,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${value[index].kodematkul}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                                Container(
                                                                  width: 300,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Text(
                                                                    "${value[index].matkul}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 50,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${value[index].sks}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                                Container(
                                                                  width: 50,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${value[index].nilaiuts}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                                Container(
                                                                  width: 50,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${value[index].nilaiuas}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                                Container(
                                                                  width: 80,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${controller.checkNilaiHuruf(value[index].partisipasi, value[index].tugas1, value[index].tugas2, value[index].nilaiuts, value[index].nilaiuas)}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                                Container(
                                                                  width: 90,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      left: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      bottom: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                      right: BorderSide(
                                                                          width:
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  child: Center(
                                                                      child:
                                                                          Text(
                                                                    "${controller.checkNilaiTotal(value[index].partisipasi, value[index].tugas1, value[index].tugas2, value[index].nilaiuts, value[index].nilaiuas)}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  )),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }))
                                                    : Center(
                                                        child: Container()),
                                                lastsection(
                                                    avgNilaiTotal,
                                                    totalSKS,
                                                    controller.filteredDataList
                                                        .length,
                                                    controller),
                                                buttonsection(controller)
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                ),
                              ),
                            ))))
            //     } else {
            //       return Center(
            //           child: Container(
            //         child: CircularProgressIndicator(),
            //       ));
            //     }
            //   },
            // ),
            );
      },
    );
  }

  Widget cari(TranscriptApiController controller) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Akademik",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.purplePiksi),
              ),
              Text(" / ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text("Transcript Nilai",
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
                  labelText: 'Masukan NPM Mahasiswa',
                  labelStyle: TextStyle(fontSize: 12)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                controller.getTranscriptData();
                controller.getProfileMahasiswa();
              },
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

  Widget findstudent(TranscriptApiController controller) {
    var value = controller.dataMahasiswa[0];
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Nama",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.abukusuka,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.1)),
                  child: Center(
                      child: Text(
                    "${value.nama}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "NPM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Center(
                      child: Text(
                    "${value.npm}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  width: 200,
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
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Program / Jurusan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.abukusuka,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0.1)),
                      child: Center(
                          child: Text(
                        "${value.program}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "/",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: AppColors.abukusuka,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 0.1)),
                        child: Center(
                          child: Text(
                            "${value.jurusan}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
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
                  child: Center(
                      child: Text(
                    "${value.jurusan}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  width: 200,
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
                "No",
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

  Widget lastsection(
      totalnilai, totalsks, length, TranscriptApiController controller) {
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
            child: Text("Total SKS :  ${totalsks}",
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
          controller.filteredDataList.isNotEmpty
              ? Container(
                  width: 90,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 0.5)),
                  ),
                  child: Text(
                    "Total IPK : ${controller.getIPK(totalsks, totalnilai).toStringAsFixed(1)}",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )
              : Container(
                  width: 90,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 0.5)),
                  ),
                  child: Text(
                    "",
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

  Widget buttonsection(TranscriptApiController controller) {
    return InkWell(
        onTap: () {
          // controller.printKHS();
        },
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 55),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width: 160,
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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cetak Transcript",
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
