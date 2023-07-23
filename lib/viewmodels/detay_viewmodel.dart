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
  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  deneyimgetir() {
    state = ViewState.geliyor;
    backgroundColor = const Color.fromARGB(255, 241, 151, 188);
    title = "Deneyimlerim";
    menuAdi = "Projelerim";
    state = ViewState.deneyim;
  }

  hakkimdagetir() {
    state = ViewState.geliyor;
    backgroundColor = const Color.fromARGB(255, 124, 200, 210);
    title = "Hakkımda";
    menuAdi = "Ben Kimim";
    state = ViewState.hakkimda;
  }

  nitelikgetir() {
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
}
