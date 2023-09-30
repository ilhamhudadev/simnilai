import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/assets/app_assets.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/profile/controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext contextprofil) {
    AppSize().init(contextprofil);
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (ProfileController controller) {
        return Scaffold(
          backgroundColor: AppColors.abukusuka,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [profile(contextprofil)],
            ),
          ),
        );
      },
    );
  }

  Widget profile(context) {
    return Stack(
      children: [
        Container(
          width: AppSize.screenWidth,
          height: AppSize.screenHeight,
          decoration: BoxDecoration(
              color: AppColors.abukusuka,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 5.0, offset: Offset(0, 1))
              ]),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: AppSize.screenWidth,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(20),
                        //     topRight: Radius.circular(20)),
                        color: AppColors.purplePiksi),
                    child: Image.asset(
                      AppAssets.bgnew,
                      width: AppSize.screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 50, left: 40, bottom: 20),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://tse4.mm.bing.net/th?id=OIP.v2EJ6yhWzDCJ_v6qIXWlrgHaHa&pid=Api&P=0&h=180'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 500, bottom: 20),
                            child: Text(
                              "Selamat Datang Mahasiswa ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 30,
                            ),
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: isitab(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 15),
                            child: button(context, 'Ubah Password'),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 30,
                        ),
                        width: 500,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: isitab2(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget button(context, title) {
    return InkWell(
      onTap: () {
        showDialog<void>(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
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
                          "Edit Password",
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
                  width: 300,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [Text('Password baru')],
                        ),
                      ),
                      Container(
                        width: 350,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Password baru',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [Text('Konfirmasi password')],
                        ),
                      ),
                      Container(
                        width: 350,
                        height: 30,
                        margin: EdgeInsets.only(top: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'konfirmasi password ',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                    width: 200,
                                    height: 35,
                                    margin: EdgeInsets.only(
                                        top: 10, right: 5, left: 5, bottom: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.purplePiksi),
                                    child: Center(
                                      child: Text(
                                        title,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                              )
                            ],
                          )
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
          width: 300,
          height: 35,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: AppColors.purplePiksi,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

Widget isitab() {
  return Column(
    children: [
      atributtab('Username', '21200011', 35),
      atributtab('Password', '********', 10),
      atributtab('NPM', '21200011', 10),
      atributtab('Program Studi', 'MIF/SI', 10),
      atributtab('Kelas', 'DDT-20/21', 10),
      atributtab('Semester', '4', 10),
    ],
  );
}

Widget isitab2() {
  return Column(
    children: [
      atributtab('Nama Lengkap', 'Alpin Agung Nugroho', 35),
      atributtab('Tempat Lahir', 'Bandung', 13),
      atributtab('Tanggal Lahir', '18 September 2003', 13),
      atributtab('Jenis Kelamin', 'Laki-Laki', 13),
      atributtab('Agama', 'Islam', 13),
      atributtab('Alamat', 'Kp.ranca enong rt2 rw16', 13),
      atributtab('No.Handphone', '085798331352', 13),
    ],
  );
}

Widget atributtab(text1, text2, atas) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(top: atas, left: 25),
        child: Text(
          text1,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: atas, right: 30),
        child: Text(
          text2,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    ],
  );
}
