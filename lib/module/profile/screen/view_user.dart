// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:standard_project/core/style/app_color.dart';
// import 'package:standard_project/core/style/app_size.dart';
// import 'package:standard_project/module/profile/controller/profile_controller.dart';
// import 'package:standard_project/module/profile/data/model/modelviewUser.dart';

// class ViewUser extends StatelessWidget {
//   @override
//   Widget build(BuildContext contextview) {
//     AppSize().init(contextview);
//     return GetBuilder<ProfileController>(
//       init: ProfileController(),
//       builder: (ProfileController controller) {
//         return MaterialApp(
//           home: DefaultTabController(
//               length: 3,
//               child: Scaffold(
//                   backgroundColor: AppColors.abukusuka,
//                   body: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         InkWell(
//                           child: Row(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(top: 20, left: 85),
//                                 child: Text(
//                                   'Akademik / User Management',
//                                   style: TextStyle(
//                                       color: AppColors.denim, fontSize: 15),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Container(
//                             child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(
//                                 margin: EdgeInsets.only(top: 15, left: 80),
//                                 width: 1100,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 5,
//                                       blurRadius: 7,
//                                       offset: Offset(
//                                           0, 3), // changes position of shadow
//                                     ),
//                                   ],
//                                 ),
//                                 child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         margin: EdgeInsets.only(left: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           children: [
//                                             headerTab(),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: Row(
//                                           children: [
//                                             Container(
//                                                 width: 270,
//                                                 height: 30,
//                                                 margin: EdgeInsets.only(
//                                                     left: 30, top: 25),
//                                                 child: TextField(
//                                                   controller: controller
//                                                       .searchTextfieldController,
//                                                   decoration: InputDecoration(
//                                                     border:
//                                                         OutlineInputBorder(),
//                                                     labelText: 'Search',
//                                                   ),
//                                                   onChanged: (text) {
//                                                     controller.searchField =
//                                                         text;
//                                                   },
//                                                 )),
//                                             Container(
//                                               width: 80,
//                                               height: 30,
//                                               margin: EdgeInsets.only(
//                                                   left: 12, top: 25),
//                                               decoration: BoxDecoration(
//                                                   color: Colors.blue,
//                                                   borderRadius:
//                                                       BorderRadius.circular(8)),
//                                               child: Center(
//                                                 child: Icon(
//                                                   Icons.search,
//                                                   color: Color.fromARGB(
//                                                       255, 206, 224, 255),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       headertable(),
//                                       ConstrainedBox(
//                                           constraints:
//                                               BoxConstraints(minHeight: 0),
//                                           child: ListView.builder(
//                                               shrinkWrap: true,
//                                               scrollDirection: Axis.vertical,
//                                               itemCount: controller
//                                                   .listmviewuser.length,
//                                               itemBuilder: (context, index) {
//                                                 return badantabel(
//                                                     controller
//                                                         .listmviewuser[index],
//                                                     context);
//                                               })),
//                                       //head table
//                                       pagination()
//                                       //isi table
//                                     ])),
//                           ],
//                         )),
//                       ],
//                     ),
//                   ))),
//         );
//       },
//     );
//   }

//   Widget headertable() {
//     return Container(
//       child: Row(
//         children: [
//           tabel(
//             150,
//             'Usersname',
//             30,
//           ),
//           tabel(
//             120,
//             'Password',
//             0,
//           ),
//           tabel(
//             100,
//             'NPM',
//             0,
//           ),
//           tabel(
//             230,
//             'Nama  ',
//             0,
//           ),
//           tabel(
//             100,
//             'Jenis kelamin',
//             0,
//           ),
//           tabel(
//             100,
//             'Kelas',
//             0,
//           ),
//           tabel(
//             150,
//             'Email',
//             0,
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 15),
//             width: 90,
//             height: 40,
//             decoration: BoxDecoration(
//                 border: Border(
//                     top: BorderSide(width: 0.5, color: Colors.black),
//                     left: BorderSide(width: 0.5, color: Colors.black),
//                     bottom: BorderSide(width: 0.5, color: Colors.black),
//                     right: BorderSide(width: 0.5, color: Colors.black)),
//                 color: AppColors.abukusuka),
//             child: Center(
//               child: Text(
//                 'action',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget tabel(
//     besar,
//     isi,
//     kiri,
//   ) {
//     return Container(
//       margin: EdgeInsets.only(left: kiri, top: 15),
//       width: besar,
//       height: 40,
//       decoration: BoxDecoration(
//           border: Border(
//             top: BorderSide(width: 0.5, color: Colors.black),
//             left: BorderSide(width: 0.5, color: Colors.black),
//             bottom: BorderSide(width: 0.5, color: Colors.black),
//           ),
//           color: AppColors.abukusuka),
//       child: Center(
//         child: Text(
//           isi,
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget badantabel(
//     mviewUser model,
//     context,
//   ) {
//     return Row(
//       children: [
//         Container(
//           margin: EdgeInsets.only(
//             left: 30,
//           ),
//           width: 150,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.username}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 120,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.password}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 100,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.NPM}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 230,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.Nama}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 100,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.kelas}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 100,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.jeniskelamin}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 150,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Center(
//             child: Text('${model.email}'),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(),
//           width: 90,
//           height: 40,
//           decoration: BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 0.5, color: Colors.black),
//                 bottom: BorderSide(width: 0.5, color: Colors.black),
//                 right: BorderSide(width: 0.5, color: Colors.black),
//               ),
//               color: Colors.white),
//           child: Row(
//             children: [
//               tomboledit(Icons.edit_document, context, Colors.blue),
//               tmblhapus()
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget tomboledit(logo, context, warna) {
//     return InkWell(
//         onTap: () {
//           showDialog(
//               context: context,
//               // user must tap button!
//               builder: (BuildContext contextview) {
//                 return AlertDialog(
//                     title: Container(
//                       padding: EdgeInsets.only(right: 15),
//                       height: 60,
//                       color: AppColors.purplePiksi,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(left: 20),
//                             child: Text(
//                               "Edit data user",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           InkWell(
//                               onTap: () {
//                                 Get.back();
//                               },
//                               child: Icon(
//                                 Icons.close,
//                                 color: Colors.white,
//                               )),
//                         ],
//                       ),
//                     ),
//                     content: SingleChildScrollView(
//                       child: Container(
//                         width: 700,
//                         height: 450,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               height: 20,
//                             ),
//                             isipopup('usersname'),
//                             Divider(),
//                             isipopup('Password'),
//                             Divider(),
//                             isipopup('Npm'),
//                             Divider(),
//                             isipopup('nama'),
//                             Divider(),
//                             isipopup('jenis kelamin'),
//                             Divider(),
//                             isipopup('kelas'),
//                             Divider(),
//                             isipopup('Email'),
//                             SizedBox(
//                               height: 40,
//                             ),

//                             Container(),
//                             Container(
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [buttonCount(context, 'Konformasi')],
//                               ),
//                             ), //isi di sini al conten yang di popup
//                           ],
//                         ),
//                       ),
//                     ));
//               });
//         },
//         borderRadius: BorderRadius.circular(20),
//         child: Container(
//           width: 30,
//           height: 30,
//           margin: EdgeInsets.only(left: 10),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border(
//                   top: BorderSide(
//                       width: 1, color: Color.fromARGB(255, 51, 95, 240)),
//                   left: BorderSide(
//                       width: 1, color: Color.fromARGB(255, 51, 95, 240)),
//                   bottom: BorderSide(
//                       width: 1, color: Color.fromARGB(255, 51, 95, 240)),
//                   right: BorderSide(
//                       width: 1, color: Color.fromARGB(255, 51, 95, 240)))),
//           child: Icon(
//             Icons.edit_document,
//             size: 18,
//             color: Color.fromARGB(255, 51, 95, 240),
//           ),
//         ));
//   }

//   Widget isipopup(isi) {
//     return Container(
//       padding: EdgeInsets.only(left: 15, right: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             isi,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Container(
//             width: 200,
//             height: 30,
//             child: TextField(
//               decoration:
//                   InputDecoration(border: OutlineInputBorder(), labelText: isi),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buttonCount(contaxt, isibtn) {
//     return InkWell(
//       onTap: () {
//         Get.back();
//       },
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//           width: 150,
//           height: 35,
//           margin: EdgeInsets.all(10),
//           padding: EdgeInsets.only(left: 10, right: 10),
//           decoration: BoxDecoration(
//             color: AppColors.purplePiksi,
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Center(
//             child: Text(
//               isibtn,
//               style: TextStyle(color: Colors.white),
//             ),
//           )),
//     );
//   }

//   Widget tmblhapus() {
//     return InkWell(
//       onTap: () {},
//       child: Row(
//         children: [
//           Container(
//             width: 30,
//             height: 30,
//             margin: EdgeInsets.only(left: 10),
//             decoration: BoxDecoration(
//                 border: Border(
//                     top: BorderSide(
//                         width: 1, color: Color.fromARGB(255, 255, 0, 0)),
//                     left: BorderSide(
//                         width: 1, color: Color.fromARGB(255, 255, 0, 0)),
//                     bottom: BorderSide(
//                         width: 1, color: Color.fromARGB(255, 255, 0, 0)),
//                     right: BorderSide(
//                         width: 1, color: Color.fromARGB(255, 255, 0, 0)))),
//             child: Icon(
//               Icons.delete,
//               size: 18,
//               color: Color.fromARGB(255, 255, 0, 0),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget headerTab() {
//     return Container(
//         color: Colors.white,
//         width: 400,
//         child: TabBar(tabs: [
//           Tab(
//             child: Text(
//               "Mahasiswa",
//               style: TextStyle(
//                   color: AppColors.eerieblack, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Tab(
//             child: Text(
//               "Dosen",
//               style: TextStyle(
//                   color: AppColors.eerieblack, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Tab(
//             child: Text(
//               "Akademik",
//               style: TextStyle(
//                   color: AppColors.eerieblack, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ]));
//   }

//   Widget bodyTab() {
//     return Expanded(
//         child: Container(
//             color: Colors.white,
//             width: AppSize.screenWidth * 0.5,
//             child: TabBarView(children: [])));
//   }

//   Widget ViewFirst() {
//     return Container();
//   }

//   Widget ViewSecond() {
//     return Container();
//   }

//   Widget pagination() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 40, left: 20),
//             child: Text('Showing 1 to 40 of entries'),
//           ),
//           Container(
//             child: Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 40),
//                   width: 60,
//                   height: 25,
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(width: 0.5, color: Colors.black),
//                       left: BorderSide(width: 0.5, color: Colors.black),
//                       bottom: BorderSide(width: 0.5, color: Colors.black),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text('previous'),
//                   ),
//                 ),
//                 Container(
//                   width: 25,
//                   height: 25,
//                   margin: EdgeInsets.only(top: 40),
//                   decoration: BoxDecoration(
//                       border: Border(
//                         top: BorderSide(width: 0.5, color: Colors.black),
//                         left: BorderSide(width: 0.5, color: Colors.black),
//                         bottom: BorderSide(width: 0.5, color: Colors.black),
//                       ),
//                       color: AppColors.purplePiksi),
//                   child: Center(
//                     child: Text(
//                       '1',
//                       style: TextStyle(fontSize: 15, color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 25,
//                   height: 25,
//                   margin: EdgeInsets.only(top: 40),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(width: 0.5, color: Colors.black),
//                       left: BorderSide(width: 0.5, color: Colors.black),
//                       bottom: BorderSide(width: 0.5, color: Colors.black),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '2',
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 25,
//                   height: 25,
//                   margin: EdgeInsets.only(top: 40),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(width: 0.5, color: Colors.black),
//                       left: BorderSide(width: 0.5, color: Colors.black),
//                       bottom: BorderSide(width: 0.5, color: Colors.black),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '3',
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 25,
//                   height: 25,
//                   margin: EdgeInsets.only(top: 40),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(width: 0.5, color: Colors.black),
//                       left: BorderSide(width: 0.5, color: Colors.black),
//                       bottom: BorderSide(width: 0.5, color: Colors.black),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '4',
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 25,
//                   height: 25,
//                   margin: EdgeInsets.only(top: 40),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(width: 0.5, color: Colors.black),
//                       left: BorderSide(width: 0.5, color: Colors.black),
//                       bottom: BorderSide(width: 0.5, color: Colors.black),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '...',
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 40,
//                   height: 25,
//                   margin: EdgeInsets.only(right: 40, top: 40),
//                   decoration: BoxDecoration(
//                     border: Border(
//                         top: BorderSide(width: 0.5, color: Colors.black),
//                         left: BorderSide(width: 0.5, color: Colors.black),
//                         bottom: BorderSide(width: 0.5, color: Colors.black),
//                         right: BorderSide(width: 0.5, color: Colors.black)),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'next',
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
