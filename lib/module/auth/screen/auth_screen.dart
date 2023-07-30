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
            width: AppSize.screenWidth,
            height: AppSize.screenHeight,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color.fromARGB(255, 137, 25, 218),
                  Color.fromARGB(255, 171, 53, 255),
                  Color.fromARGB(255, 191, 107, 250),
                  Color.fromARGB(255, 209, 147, 253),
                ],
                center: Alignment.center,
                focal: Alignment.topLeft,
                focalRadius: 0.2,
                radius: 1.5,
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 250,
                              height: 40,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                    prefixIcon: Icon(Icons.person),
                                  ),
                                ),
                              )),
                          Container(
                              width: 250,
                              height: 40,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(Icons.lock),
                                  ),
                                  obscureText: true,
                                ),
                              )),
                          Container(
                            child: Column(
                              children: [
                                button(),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
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
              "Ubah password",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
