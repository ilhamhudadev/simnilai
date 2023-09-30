
  import 'package:get/get.dart';
  import 'package:standard_project/module/study/data/model/matakuliah.dart';
  import 'package:standard_project/module/study/data/repo/study_repo.dart';
  class StudyController extends GetxController with StudyRepo {

List<listmatkul> matkullist=[
    listmatkul(
      No: '1',
      Kode: '1111',
      NamaMataKuliah: 'Elektronika',
      NamaDosen: 'Seliwati',
      SKS: '3',
      SMT: '4',
      Prodi: 'D3-TIK',
    ),
    listmatkul(
      No: '2',
      Kode: '1111',
      NamaMataKuliah: 'Elektronika',
      NamaDosen: 'Seliwati',
      SKS: '3',
      SMT: '4',
      Prodi: 'D3-TIK',
    )
  ];  
  }
