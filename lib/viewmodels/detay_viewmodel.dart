import 'package:flutter/material.dart';
import 'package:portfolio_app/locator.dart';

import '../repository/repository.dart';

enum ViewState { geliyor, hakkimda, deneyim, niteliklerim, hata }

class DetayViewModel with ChangeNotifier {
  final Repository _repository = locator<Repository>();
  ViewState _state = ViewState.geliyor;
  ViewState get state => _state;
  Color backgroundColor = Colors.white;
  String title = "";
  String menuAdi = "";
  Map<String, Map> hakkimda = {};
  Map<String, Map> niteliklerim = {};
  Map<String, Map> deneyimlerim = {};
  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  deneyimgetir() async {
    state = ViewState.geliyor;
    backgroundColor = const Color.fromARGB(255, 241, 151, 188);
    title = "Deneyimlerim";
    menuAdi = "Projelerim";

    state = ViewState.deneyim;
  }

  hakkimdagetir() async {
    state = ViewState.geliyor;
    backgroundColor = const Color.fromARGB(255, 124, 200, 210);
    title = "Hakkımda";
    menuAdi = "Ben Kimim";

    state = ViewState.hakkimda;
  }

  nitelikgetir() async {
    state = ViewState.geliyor;
    backgroundColor = const Color.fromARGB(255, 150, 176, 238);
    title = "Niteliklerim";
    menuAdi = "Niteliklerim";

    state = ViewState.niteliklerim;
  }

  menuDegis(String newMenuAdi) {
    menuAdi = newMenuAdi;
    notifyListeners();
  }

  detayGetir() async {
    hakkimda = await _repository.hakkimdaGetir();
    niteliklerim = await _repository.nitelikGetir();
    deneyimlerim = await _repository.deneyimGetir();
    await _repository.projeGetir();
    notifyListeners();
  }
}
