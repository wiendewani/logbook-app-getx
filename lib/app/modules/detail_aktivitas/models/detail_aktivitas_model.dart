import 'dart:convert';

DetailAktivitasModel detailAktivitasModelFromJson(String str) => DetailAktivitasModel.fromJson(json.decode(str));

String detailAktivitasModelToJson(DetailAktivitasModel data) => json.encode(data.toJson());

class DetailAktivitasModel {
    DetailAktivitasModel({
        required this.status,
        required this.tittle,
    });

    bool status;
    String tittle;

    factory DetailAktivitasModel.fromJson(Map<String, dynamic> json) => DetailAktivitasModel(
        status: json["status"],
        tittle: json["tittle"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "tittle": tittle,
    };
}
