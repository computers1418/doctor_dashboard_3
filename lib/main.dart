import 'package:doctor_dashboard_3/pages/history/history_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'constants/constants.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light, 
    statusBarBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Dashboard',
      theme: ThemeData(
        fontFamily: 'Slussen',
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(25.0),
          thumbColor: MaterialStateProperty.all(HexColor(pinkColor)), // Set thumb color
          trackColor: MaterialStateProperty.all(HexColor("#F4F4F5")), // Set track color
        ),
      ),
      builder: (context, child) {
        return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: child!);
      },
      home: const HistoryView(),
    );
  }
}