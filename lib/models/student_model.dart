class StudentModel {
    int id;
    int user;
    int jurusan;
    int rayon;
    int rombel;
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
        jurusan: json["jurusan"],
        rayon: json["rayon"],
        rombel: json["rombel"],
        name: json["name"],
        nis: json["nis"],
        photo: json["photo"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );
}

