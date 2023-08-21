import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/study/controller/study_controller.dart';

class Teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StudyController>(
      init: StudyController(),
      builder: (StudyController controller) {
        return Scaffold(
            backgroundColor: Colors.cyanAccent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 301),
                  width: 757,
                  height: 333,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                tebel(20, "memek"),
                                tebel(0, "telil"),
                                tebel(0, "puklmak"),
                                tebel(0, "kanbas"),
                                tebel(0, "kamiyou"),
                                tebel(0, "puklmak"),
                                tebel(0, "kanbas"),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                tebel(20, "memek"),
                                tebel(0, "telil"),
                                tebel(0, "puklmak"),
                                tebel(0, "kanbas"),
                                tebel(0, "kamiyou"),
                                tebel(0, "puklmak"),
                                tebel(0, "kanbas"),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                tebel(20, "memek"),
                                tebel(0, "telil"),
                                tebel(0, "puklmak"),
                                tebel(0, "kanbas"),
                                tebel(0, "kamiyou"),
                                tebel(0, "puklmak"),
                                tebel(0, "kanbas"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }

  Container tebel(kanan, memek) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: kanan),
      width: 100,
      height: 28,
      decoration: BoxDecoration(
          color: Colors.amberAccent, border: Border.all(color: Colors.black)),
      child: Center(
        child: Text(memek),
      ),
    );
  }
}
