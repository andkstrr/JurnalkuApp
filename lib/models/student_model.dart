class StudentModel {
  int id;
  int user;
  Jurusan jurusan;
  Rayon rayon;
  Rombel rombel;
  String name;
  int nis;
  dynamic photo;
  DateTime createdAt;
  DateTime updatedAt;

  StudentModel({
    required this.id,
    required this.user,
    required this.jurusan,
    required this.rayon,
    required this.rombel,
    required this.name,
    required this.nis,
    required this.photo,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    id: json["id"],
    user: json["user"],
    jurusan: Jurusan.fromJson(json["jurusan"]),
    rayon: Rayon.fromJson(json["rayon"]),
    rombel: Rombel.fromJson(json["rombel"]),
    name: json["name"],
    nis: json["nis"],
    photo: json["photo"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  // loading view
  factory StudentModel.placeholder() {
    return StudentModel(
      id: 0,
      user: 0,
      name: "Memuat...",
      nis: 0,
      rombel: Rombel(id: 0, tingkatan: 0),
      rayon: Rayon(id: 0, name: "-"),
      jurusan: Jurusan(id: 0, name: "-"),
      photo: null,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}

class Jurusan {
  int id;
  String name;

  Jurusan({required this.id, required this.name});

  factory Jurusan.fromJson(Map<String, dynamic> json) =>
      Jurusan(id: json["id"], name: json["name"]);
}

class Rayon {
  int id;
  String name;

  Rayon({required this.id, required this.name});

  factory Rayon.fromJson(Map<String, dynamic> json) =>
      Rayon(id: json["id"], name: json["name"]);
}

class Rombel {
  int id;
  int tingkatan;

  Rombel({required this.id, required this.tingkatan});

  factory Rombel.fromJson(Map<String, dynamic> json) =>
      Rombel(id: json["id"], tingkatan: json["tingkatan"]);
}
