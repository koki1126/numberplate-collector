import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter/services.dart';

void main() {
  //スマホだった場合縦向き固定
  if (Device.get().isTablet != true) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const MainPage(),
      },
    );
  }
}
