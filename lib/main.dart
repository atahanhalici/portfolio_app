import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_app/pages/splash_screen.dart';
import 'package:portfolio_app/route_generator.dart';
import 'package:portfolio_app/viewmodels/detay_viewmodel.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setupLocator();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => DetayViewModel()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atahan Halıcı Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreen(),
      onGenerateRoute: RouteGenerator.rotaOlustur,
    );
  }
}
