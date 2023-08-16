import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/auth/controller/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (AuthController controller) {
        return Scaffold(
          body: Container(
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: 800,
                    height: 700,
                    color: AppColors.purplePiksi,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 130,
                                  height: 130,
                                  margin: EdgeInsets.only(top: 200, left: 70),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://tse4.mm.bing.net/th?id=OIP.v2EJ6yhWzDCJ_v6qIXWlrgHaHa&pid=Api&P=0&h=180'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                Container(
                                  width: 3,
                                  height: 125,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 200, left: 20),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 200, right: 65),
                                        child: Text(
                                          'PORTAL MAHASISWA',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 45,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 60, left: 10),
                                        child: Text(
                                          'POLITEKNIK PIKSI GANESHA',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 35,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(),
                          Container()
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 480,
                    height: 700,
                    color: AppColors.abukusuka,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 150, right: 240),
                                    child: Text(
                                      'Signin mahasiswa',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                      width: 480,
                                      height: 40,
                                      margin: EdgeInsets.only(top: 20),
                                      padding:
                                          EdgeInsets.only(right: 20, left: 20),
                                      child: Center(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Username',
                                            prefixIcon: Icon(Icons.person),
                                          ),
                                        ),
                                      )),
                                  Container(
                                      width: 480,
                                      height: 40,
                                      margin: EdgeInsets.only(top: 20),
                                      padding:
                                          EdgeInsets.only(right: 20, left: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Password',
                                            prefixIcon: Icon(Icons.lock),
                                          ),
                                          obscureText: true,
                                        ),
                                      )),
                                  button(),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget button() {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
          width: 450,
          height: 35,
          margin: EdgeInsets.only(
            top: 15,
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: AppColors.purplePiksi,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
