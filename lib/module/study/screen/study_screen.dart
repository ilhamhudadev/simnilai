
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/style/app_color.dart';
import 'package:standard_project/core/style/app_size.dart';
import 'package:standard_project/module/study/data/model/matakuliah.dart';
import '../controller/study_controller.dart';

class Studyscreen extends StatelessWidget {
  @override
  Widget build(BuildContext contextmatkul) {
    AppSize().init(contextmatkul);
    return GetBuilder<StudyController>(
        init: StudyController(),
        builder: (StudyController controller) {
    return Scaffold(

      body: Container(
        color: AppColors.abukusuka,
        child: Column
        ( children: [
         Container(
          padding: EdgeInsets.only(top: 30,left: 110, bottom: 20,),
          child: Row( children: [
            Text('Master / Matakuliah',
            style: TextStyle( fontSize: 15, color: AppColors.purplePiksi, ))

          ],
          ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white ,
              borderRadius: BorderRadius.circular(10)
            ),
            width: 1150, height: 450, 
            child: Column(
              children: [
                Container( 
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  
                ),
                Container(
                  child: SizedBox(
                    height: 20,
                  ),

                ),
                

                searcharea(),
                headertabel(),
                Container(
                  height: 100,
                   child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: controller.matkullist.length,
                  itemBuilder: (context, index) {
                  return baris(
                  controller.matkullist[index], context, BorderSide(width: 1, color: Colors.black),);
                },
                ),
                  ),
                page(),
               
                
                
              ],
            ),
          )
        ],  
        )

      )
     ); 
    });
     }


     Widget searcharea(){
        return Container(
          padding: EdgeInsets.only(top: 10, left:48),
          child: Row (children: [
                     Container(
                                width: 250,
                                height: 30,
                                margin: EdgeInsets.only(top: 10, left: 15),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Search'),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 60,
                                height: 30,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blue),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
          ]),

        );
     }

     Widget headertabel(){
      return  Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1, color: Colors.black), 
                        left: BorderSide(width: 1, color: Colors.black), 
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('No', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1, color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('Kode', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 280,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1,color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black), 
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('Nama Mata Kuliah', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1,color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black) ,
                        bottom: BorderSide(width: 1, color: Colors.black))
                      ),
                      child: Text('Nama Dosen', style: TextStyle(fontWeight: FontWeight.bold,)),),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      decoration: BoxDecoration(
                        color:AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1,color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('SKS', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1,color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black))
                      ),
                      child: Text('SMT', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 120,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1,color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('Prodi', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 65,
                      decoration: BoxDecoration(
                        color: AppColors.abukusuka,
                        border: Border(top: BorderSide(width: 1,color: Colors.black),  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('Aksi', style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),

                  ],
                  ),
                );
     }

    

  Widget baris(
    listmatkul model, context, bawah
  ){
    return Container(
      child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border( 
                        left: BorderSide(width: 1,color: Colors.black), 
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: bawah )
                      ),
                      child: Center(child: Text('${model.No}')),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border( 
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black))
                      ),
                      child: Text('${model.Kode}'),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('${model.NamaMataKuliah}'),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(  
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black))
                      ),
                      child: Text('${model.NamaDosen}'),),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border( 
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Text('${model.SKS}'),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border( 
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black))
                      ),
                      child: Text('${model.SMT}'),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border( 
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black))
                      ),
                      child: Text('${model.Prodi}'),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 65,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                        right: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black) )
                      ),
                      child: Container(
                        padding: EdgeInsets.only(right: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell( 
                              onTap: () {
                                showDialog(context: context, 
                                builder: (BuildContext){
                                  return AlertDialog(
                                    content: Container(
                                      width: 500,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(children: [
                                         Container(
                  padding: EdgeInsets.only(right: 15),
                  height: 50,
                  color: AppColors.purplePiksi,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Data Dosen",
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
                // Divider(),
                Container(
                  padding: EdgeInsets.only(top: 20, left:5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Nama Dosen', style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text('Kontak Dosen', style: TextStyle(fontWeight: FontWeight.bold,))
                  
                  ],),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(top: 20, left:5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Seliwati', style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text('081234567890', style: TextStyle(fontWeight: FontWeight.bold,))
                  
                  ],),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(top: 20, left:5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Agus Alim', style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text('080987654321', style: TextStyle(fontWeight: FontWeight.bold,)),
                  
                  ],),
                ),
                Divider(),
                Container(
                                width: 60,
                                height: 30,
                                margin: EdgeInsets.only(top: 25, right: 450),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.purplePiksi),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                    onTap: () {
                                    Get.back();
                                    },
                                    child: Text('Ok', 
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.white),),
                                    )
                                  ],
                                ),
                              ),
                                      ],)
                                    ),
                                  );
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                        border: Border(top: BorderSide(width: 1, color: Colors.deepPurple,),  
                        right: BorderSide(width: 1, color: Colors.deepPurple,),
                        bottom: BorderSide(width: 1, color: Colors.deepPurple,),
                        left: BorderSide(width: 1, color: Colors.deepPurple,)
                        )
                        ),
                             child: 
                             Icon(Icons.remove_red_eye, size: 18, color: Colors.deepPurple,)
                            ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),

                  
                  ],
                  ),
           );
     }  

     Widget page() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 60),
            child: Text('Showing 1 to 70 of entries'),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40,),
                  width: 60,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                    ),
                  ),
                  child: Center(
                    child: Text('previous'),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 0.5, color: Colors.black),
                        left: BorderSide(width: 0.5, color: Colors.black),
                        bottom: BorderSide(width: 0.5, color: Colors.black),
                      ),
                      color: AppColors.purplePiksi),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(top: 40,),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.black),
                      left: BorderSide(width: 0.5, color: Colors.black),
                      bottom: BorderSide(width: 0.5, color: Colors.black),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '...',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 25,
                  margin: EdgeInsets.only(right: 65, top: 40),
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.black),
                        left: BorderSide(width: 0.5, color: Colors.black),
                        bottom: BorderSide(width: 0.5, color: Colors.black),
                        right: BorderSide(width: 0.5, color: Colors.black)),
                  ),
                  child: Center(
                    child: Text(
                      'next',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }        
     
    }