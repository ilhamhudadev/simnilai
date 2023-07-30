import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/profile/controller/profile_controller.dart';

class ViewUser extends StatelessWidget {
  @override
  Widget build(BuildContext contextview) {
    AppSize().init(contextview);
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (ProfileController controller) {
        return Scaffold(
            backgroundColor: AppColors.abukusuka,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 30, bottom: 10),
                        child: Icon(
                          Icons.people, // Ikon pensil
                          size: 50, // Ukuran ikon (opsional)
                          color: Colors.black,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 33),
                      child: Text(
                        'Data Users',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: contextview,
                            builder: (BuildContext) {
                              return AlertDialog(
                                content: Container(
                                  width: 300,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      TextField(
                                        decoration:
                                            InputDecoration(labelText: 'coba'),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Icon(Icons.abc),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        decoration: InputDecoration(labelText: ' '),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      margin: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'Cari',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    tabel(180, 'usersname', 30, 0),
                    tabel(150, 'password', 0, 0),
                    tabel(100, 'NPM', 0, 0),
                    tabel(300, 'Nama  ', 0, 0),
                    tabel(100, 'jenis kelamin', 0, 0),
                    tabel(100, 'kelas', 0, 0),
                    tabel(200, 'email', 0, 0),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(width: 0.4),
                              left: BorderSide(width: 0.4),
                              bottom: BorderSide(width: 0.4),
                              right: BorderSide(width: 0.4)),
                          color: AppColors.abukusuka),
                      child: Center(
                        child: Text('action'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //eusi table
                child: Row(
                  children: [
                    badantabel(180, 'alpin123', 30, 0),
                    badantabel(150, 'asjsj2311', 0, 0),
                    badantabel(100, '21200011', 0, 0),
                    badantabel(300, 'alpin agung nugroho', 0, 0),
                    badantabel(100, 'alpin123', 0, 0),
                    badantabel(100, 'alpin123', 0, 0),
                    badantabel(200, 'alpin123', 0, 0),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(width: 0.4),
                              bottom: BorderSide(width: 0.4),
                              right: BorderSide(width: 0.4)),
                          color: Colors.white),
                      child: Row(
                        children: [
                          tomboledithapus(Icons.edit, contextview),
                          tomboledithapus(Icons.delete, contextview)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //eusi table
                child: Row(
                  children: [
                    badantabel(180, 'alpin123', 30, 0),
                    badantabel(150, 'asjsj2311', 0, 0),
                    badantabel(100, '21200011', 0, 0),
                    badantabel(300, 'alpin agung nugroho', 0, 0),
                    badantabel(100, 'alpin123', 0, 0),
                    badantabel(100, 'alpin123', 0, 0),
                    badantabel(200, 'alpin123', 0, 0),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(width: 0.4),
                              bottom: BorderSide(width: 0.4),
                              right: BorderSide(width: 0.4)),
                          color: Colors.white),
                      child: Row(
                        children: [
                          tomboledithapus(Icons.edit, contextview),
                          tomboledithapus(Icons.delete, contextview)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //eusi table
                child: Row(
                  children: [
                    badantabel(180, 'alpin123', 30, 0),
                    badantabel(150, 'asjsj2311', 0, 0),
                    badantabel(100, '21200011', 0, 0),
                    badantabel(300, 'alpin agung nugroho', 0, 0),
                    badantabel(100, 'alpin123', 0, 0),
                    badantabel(100, 'alpin123', 0, 0),
                    badantabel(200, 'alpin123', 0, 0),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(width: 0.4),
                              bottom: BorderSide(width: 0.4),
                              right: BorderSide(width: 0.4)),
                          color: Colors.white),
                      child: Row(
                        children: [
                          tomboledithapus(Icons.edit, contextview),
                          tomboledithapus(Icons.delete, contextview)
                        ],
                      ),
                    ),
                  ],
                ),
              ), //head table
              Container(), //isi table
            ]));
      },
    );
  }

  Widget tabel(besar, isi, kiri, kanan) {
    return Container(
      margin: EdgeInsets.only(left: kiri, top: 30),
      width: besar,
      height: 40,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 0.4),
              left: BorderSide(width: 0.4),
              bottom: BorderSide(width: 0.4),
              right: BorderSide(width: kanan)),
          color: AppColors.abukusuka),
      child: Center(
        child: Text(
          isi,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget badantabel(besar, data, kiri, garis) {
    return Container(
      margin: EdgeInsets.only(
        left: kiri,
      ),
      width: besar,
      height: 40,
      decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 0.4),
            bottom: BorderSide(width: 0.4),
          ),
          color: Colors.white),
      child: Center(
        child: Text(data),
      ),
    );
  }

  Widget tomboledithapus(logo, context) {
    return InkWell(
        onTap: () {
          showDialog(
              context: context,
              // user must tap button!
              builder: (BuildContext contextview) {
                return AlertDialog(
                    content: SingleChildScrollView(
                  child: Container(
                    width: 600,
                    height: 700,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(labelText: 'username'),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'NPM'),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'Nama'),
                        ),
                        TextField(
                          decoration:
                              InputDecoration(labelText: 'jenis kelamin'),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'Kelas'),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 50, right: 45, top: 20),
                              child: buttonCount(contextview, "Konfirmasi"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ));
              });
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(7)),
          child: Icon(
            logo,
            size: 18,
            color: Colors.white,
          ),
        ));
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
}
