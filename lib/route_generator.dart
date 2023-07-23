import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/deneyim_page.dart';
import 'package:portfolio_app/pages/home_screen.dart';

class RouteGenerator {
  static Route<dynamic>? _gidilecekrota(Widget gidilecekWidget) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(builder: (context) => gidilecekWidget);
    } else {
      return MaterialPageRoute(builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic>? rotaOlustur(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _gidilecekrota(const HomePage());
      case '/detay':
        return _gidilecekrota(const DeneyimPage());
      case '/anasayfa':
        return _gidilecekrota(const HomePage());
      default:
        return _gidilecekrota(const HomePage());
    }
  }
}
