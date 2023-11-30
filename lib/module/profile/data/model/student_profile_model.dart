class StudentProfileModel {
  int? statusCode;
  String? statusMessage;
  String? message;
  List<Data>? data;

  StudentProfileModel(
      {this.statusCode, this.statusMessage, this.message, this.data});

  StudentProfileModel.fromJson(Map<String, dynamic> json) {
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
    data['statusCode'] = statusCode;
    data['statusMessage'] = statusMessage;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? npm;
  String? nama;
  String? tempatlahir;
  String? tanggallahir;
  String? agama;
  String? kelamin;
  String? alamat1;
  String? alamat2;
  String? tlprumah;
  String? hp;
  String? asalsekolah;
  String? namaortu;
  String? pekerjaanortu;
  String? namakantor;
  String? jabatan;
  String? alamatkantor;
  String? program;
  String? jurusan;
  String? jenisprog;
  String? kelas;
  int? status;
  String? userid;
  String? pass;

  Data({
    this.id,
    this.npm,
    this.nama,
    this.tempatlahir,
    this.tanggallahir,
    this.agama,
    this.kelamin,
    this.alamat1,
    this.alamat2,
    this.tlprumah,
    this.hp,
    this.asalsekolah,
    this.namaortu,
    this.pekerjaanortu,
    this.namakantor,
    this.jabatan,
    this.alamatkantor,
    this.program,
    this.jurusan,
    this.jenisprog,
    this.kelas,
    this.status,
    this.userid,
    this.pass,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    npm = json['npm'];
    nama = json['nama'];
    tempatlahir = json['tempatlahir'];
    tanggallahir = json['tanggallahir'];
    agama = json['agama'];
    kelamin = json['kelamin'];
    alamat1 = json['alamat1'];
    alamat2 = json['alamat2'];
    tlprumah = json['tlprumah'];
    hp = json['hp'];
    asalsekolah = json['asalsekolah'];
    namaortu = json['namaortu'];
    pekerjaanortu = json['pekerjaanortu'];
    namakantor = json['namakantor'];
    jabatan = json['jabatan'];
    alamatkantor = json['alamatkantor'];
    program = json['program'];
    jurusan = json['jurusan'];
    jenisprog = json['jenisprog'];
    kelas = json['kelas'];
    status = json['status'];
    userid = json['userid'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['npm'] = npm;
    data['nama'] = nama;
    data['tempatlahir'] = tempatlahir;
    data['tanggallahir'] = tanggallahir;
    data['agama'] = agama;
    data['kelamin'] = kelamin;
    data['alamat1'] = alamat1;
    data['alamat2'] = alamat2;
    data['tlprumah'] = tlprumah;
    data['hp'] = hp;
    data['asalsekolah'] = asalsekolah;
    data['namaortu'] = namaortu;
    data['pekerjaanortu'] = pekerjaanortu;
    data['namakantor'] = namakantor;
    data['jabatan'] = jabatan;
    data['alamatkantor'] = alamatkantor;
    data['program'] = program;
    data['jurusan'] = jurusan;
    data['jenisprog'] = jenisprog;
    data['kelas'] = kelas;
    data['status'] = status;
    data['userid'] = userid;
    data['pass'] = pass;
    return data;
  }
}
