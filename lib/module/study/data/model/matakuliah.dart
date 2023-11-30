class MataKuliahModel {
  int? statusCode;
  String? statusMessage;
  String? message;
  List<Data>? data;

  MataKuliahModel(
      {this.statusCode, this.statusMessage, this.message, this.data});

  MataKuliahModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? kodeMatkul;
  String? matkul;
  String? subjek;
  String? sKS;
  String? praSyarat;
  int? smt;
  String? jurusan;

  Data(
      {this.id,
      this.kodeMatkul,
      this.matkul,
      this.subjek,
      this.sKS,
      this.praSyarat,
      this.smt,
      this.jurusan});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kodeMatkul = json['KodeMatkul'];
    matkul = json['Matkul'];
    subjek = json['Subjek'];
    sKS = json['SKS'];
    praSyarat = json['PraSyarat'];
    smt = json['Smt'];
    jurusan = json['Jurusan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['KodeMatkul'] = this.kodeMatkul;
    data['Matkul'] = this.matkul;
    data['Subjek'] = this.subjek;
    data['SKS'] = this.sKS;
    data['PraSyarat'] = this.praSyarat;
    data['Smt'] = this.smt;
    data['Jurusan'] = this.jurusan;
    return data;
  }
}
