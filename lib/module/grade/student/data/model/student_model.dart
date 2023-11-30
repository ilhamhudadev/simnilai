class StudentKHSModel {
  int? statusCode;
  String? statusMessage;
  String? message;
  List<Data>? data;

  StudentKHSModel(
      {this.statusCode, this.statusMessage, this.message, this.data});

  StudentKHSModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusMessage = json['statusMessage'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['statusMessage'] = this.statusMessage;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? tahun;
  String? npm;
  String? kelas;
  String? kodematkul;
  String? partisipasi;
  String? tugas1;
  String? nilaiuts;
  String? tugas2;
  String? nilaiuas;
  String? nilaiakhir;
  Null? nilaiIndex;
  String? smt;
  String? matkul;
  String? sks;

  Data(
      {this.tahun,
      this.npm,
      this.kelas,
      this.kodematkul,
      this.partisipasi,
      this.tugas1,
      this.nilaiuts,
      this.tugas2,
      this.nilaiuas,
      this.nilaiakhir,
      this.nilaiIndex,
      this.smt,
      this.matkul,
      this.sks});

  Data.fromJson(Map<String, dynamic> json) {
    tahun = json['tahun'];
    npm = json['npm'];
    kelas = json['kelas'];
    kodematkul = json['kodematkul'];
    partisipasi = json['partisipasi'];
    tugas1 = json['tugas1'];
    nilaiuts = json['nilaiuts'];
    tugas2 = json['tugas2'];
    nilaiuas = json['nilaiuas'];
    nilaiakhir = json['nilaiakhir'];
    nilaiIndex = json['nilai_index'];
    smt = json['smt'];
    matkul = json['matkul'];
    sks = json['sks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tahun'] = this.tahun;
    data['npm'] = this.npm;
    data['kelas'] = this.kelas;
    data['kodematkul'] = this.kodematkul;
    data['partisipasi'] = this.partisipasi;
    data['tugas1'] = this.tugas1;
    data['nilaiuts'] = this.nilaiuts;
    data['tugas2'] = this.tugas2;
    data['nilaiuas'] = this.nilaiuas;
    data['nilaiakhir'] = this.nilaiakhir;
    data['nilai_index'] = this.nilaiIndex;
    data['smt'] = this.smt;
    data['matkul'] = this.matkul;
    data['sks'] = this.sks;
    return data;
  }
}
