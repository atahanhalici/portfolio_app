import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:portfolio_app/models/proje.dart';

class ApiServices {
  final String yol = "https://api.github.com/users/atahanhalici/repos";

  projeGetir() async {
    List<Projeler> projeler = [];
    final response = await http.get(Uri.parse(yol), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $key',
    });
    List jsonResponse = json.decode(response.body);

    jsonResponse.sort((a, b) {
      a = DateTime.parse(a["updated_at"]);
      b = DateTime.parse(b["updated_at"]);

      return a.compareTo(b);
    });

    for (int i = 0; i < jsonResponse.length; i++) {
      final dillerresponse = await http.get(
          Uri.parse(
              "https://api.github.com/repos/atahanhalici/${jsonResponse[i]["name"]}/languages"),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $key',
          });
      Map dilResponse = json.decode(dillerresponse.body);
      num toplam = 0;
      for (int i = 0; i < dilResponse.keys.length; i++) {
        toplam = toplam + dilResponse.values.toList()[i];
        if (i + 1 == dilResponse.keys.length) {
          for (int j = 0; j < dilResponse.keys.length; j++) {
            double yuzde = dilResponse.values.toList()[j] / toplam;
            dilResponse[dilResponse.keys.toList()[j]] = (yuzde * 100);
          }
        }
      }
      Map<String, dynamic> proje = {
        "adi": jsonResponse[i]["name"],
        "aciklama": jsonResponse[i]["description"] ?? "",
        "kodyuzde": dilResponse,
        "link": jsonResponse[i]["html_url"]
      };
      Projeler projem = Projeler.fromMap(proje);
      projeler.add(projem);
    }
    projeler = projeler.reversed.toList();
    return projeler;
  }
}
