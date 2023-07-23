import 'dart:convert';

List<Projeler> commentFromJson(String str) =>
    List<Projeler>.from(json.decode(str).map((x) => Projeler.fromJson(x)));
String commentToJson(List<Projeler> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Projeler {
  final String adi;
  final String aciklama;
  final String link;
  final Map kodyuzde;

  Projeler({
    required this.adi,
    required this.aciklama,
    required this.kodyuzde,
    required this.link,
  });
  factory Projeler.fromJson(
    Map<String, dynamic> json,
  ) =>
      Projeler(
          adi: json["adi"],
          aciklama: json["aciklama"],
          kodyuzde: json["kodyuzde"],
          link: json["link"]);
  Map<String, dynamic> toJson() =>
      {"adi": adi, "aciklama": aciklama, "kodyuzde": kodyuzde, "link": link};

  Projeler.fromMap(Map<String, dynamic> map)
      : adi = map["adi"],
        aciklama = map["aciklama"],
        kodyuzde = map["kodyuzde"],
        link = map["link"];
  Map<String, dynamic> toMap() {
    return {
      'adi': adi,
      'aciklama': aciklama,
      "kodyuzde": kodyuzde,
      "link": link
    };
  }

  @override
  String toString() {
    return "Projeler {adi: $adi, aciklama: $aciklama, kodyuzde: $kodyuzde, link: $link";
  }
}
