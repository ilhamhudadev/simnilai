import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/profile/data/model/modelviewUser.dart';
import 'package:standard_project/module/profile/data/repo/profile_repo.dart';

class ProfileController extends GetxController with ProfileRepo {
  TextEditingController searchTextfieldController = TextEditingController();
  String searchField = '';
  TextEditingController inputTextfieldController = TextEditingController();
  String inputField = '';

  List<mviewUser> listmviewuser = [
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: 'Alpin1238',
      password: 'alpin180903',
      NPM: '21200011',
      Nama: 'Alpin Agung Nugroho',
      jeniskelamin: 'Laki Laki',
      kelas: 'DDT-20/21',
      email: 'Alpin2@gmail.com',
    ),
    mviewUser(
      username: '2020/2021',
      password: 'rifqi',
      NPM: 'sabyan',
      Nama: 'sabyan',
      jeniskelamin: 'sabyan',
      kelas: 'b',
      email: 'd',
    ),
    mviewUser(
      username: '2020/2021',
      password: 'rifqi',
      NPM: 'sabyan',
      Nama: 'sabyan',
      jeniskelamin: 'sabyan',
      kelas: 'b',
      email: 'd',
    ),
    mviewUser(
      username: '2020/2021',
      password: 'rifqi',
      NPM: 'sabyan',
      Nama: 'sabyan',
      jeniskelamin: 'sabyan',
      kelas: 'b',
      email: 'd',
    ),
    mviewUser(
      username: '2020/2021',
      password: 'rifqi',
      NPM: 'sabyan',
      Nama: 'sabyan',
      jeniskelamin: 'sabyan',
      kelas: 'b',
      email: 'd',
    ),
    mviewUser(
      username: '2020/2021',
      password: 'rifqi',
      NPM: 'sabyan',
      Nama: 'sabyan',
      jeniskelamin: 'sabyan',
      kelas: 'b',
      email: 'd',
    ),
    mviewUser(
      username: '2020/2021',
      password: 'rifqi',
      NPM: 'sabyan',
      Nama: 'sabyan',
      jeniskelamin: 'sabyan',
      kelas: 'b',
      email: 'd',
    )
  ];
}
