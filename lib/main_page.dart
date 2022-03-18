import 'package:flutter/material.dart';
import 'package:prefectures_collector/number_plate.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GridView.count(
            padding: const EdgeInsets.all(10),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            childAspectRatio: (30 / 18), //Gridの比率
            children: const <NumberPlate>[
              NumberPlate(name: '堺'),
              NumberPlate(name: '川越'),
              NumberPlate(name: '北九州'),
              NumberPlate(name: '尾張小牧'),
            ],
          ),
        ),
      ),
    );
  }
}
