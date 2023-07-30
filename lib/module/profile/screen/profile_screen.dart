import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          backgroundColor: Color.fromARGB(255, 79, 27, 125),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      width: AppSize.screenWidth,
                      height: 500,
                      margin: EdgeInsets.only(
                        top: 200,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                      ),
                    ),
                    ppkiri(contextprofil),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ppkanan(contextprofil),
                      ],
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }

  Widget ppkiri(context) {
    return Container(
      width: 350,
      height: 460,
      margin: EdgeInsets.only(top: 100, left: 20),
      decoration: BoxDecoration(
          color: AppColors.WRPP, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: AppColors.abukolom,
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.person,
                size: 100,
              )),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 40),
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: AppColors.WRPP,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "NPM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("21200011")
                ],
              )),
          SizedBox(height: 20),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 1),
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: AppColors.WRPP,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nama", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Alpin Agung nugroho")
                ],
              )),
          SizedBox(height: 20),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 1),
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: AppColors.WRPP,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kelas", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("DDT-20/21")
                ],
              )),
          SizedBox(height: 20),
          Container(
              width: 400,
              height: 30,
              margin: EdgeInsets.only(left: 1, right: 1, top: 1),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: AppColors.WRPP,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Jurusan",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("MIF/SI")
                ],
              ))
        ],
      ),
    );
  }

  Container ppkanan(context) {
    return Container(
      width: 800,
      margin: EdgeInsets.only(top: 100, right: 70),
      padding: EdgeInsets.only(top: 50, bottom: 50),
      decoration: BoxDecoration(
          color: AppColors.WRPP, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          atributkanan('Nama Lengkap', 'Alpin Agung Nugroho'),
          Divider(),
          atributkanan('Tempat Lahir', 'Bandung'),
          Divider(),
          atributkanan('jenis Kelamin', 'Laki-Laki'),
          Divider(),
          atributkanan('Tanggal lahir', '18 September 2003'),
          Divider(),
          atributkanan('Agama', 'islam'),
          atributkanan('Alamat', 'Kp.ranca enong rt2 rw16'),
          atributkanan('No.Hp', '085798331352'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    button(context, "Ubah password"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget table() {
    return Container(
        width: 500,
        height: 40,
        margin: EdgeInsets.only(right: 500, left: 10),
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0, color: Colors.transparent),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Program Studi"),
          Text("MIf"),
        ]));
  }

  Widget button(context, title) {
    return InkWell(
      onTap: () {
        showDialog<void>(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                content: Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Password baru'),
                      ),
                      TextField(
                        decoration:
                            InputDecoration(labelText: 'konfirmasi password '),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 50, right: 45, top: 20),
                            child: buttonCount(context, "Konfirmasi"),
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
          width: 150,
          height: 35,
          margin: EdgeInsets.all(10),
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

  Widget atributkanan(
    isi1,
    isi2,
  ) {
    return Container(
        width: 800,
        height: 30,
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(color: AppColors.WRPP),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(isi1), Text(isi2)],
        ));
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
