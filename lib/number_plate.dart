import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberPlate extends StatefulWidget {
  // final String id;
  final String name;
  const NumberPlate({
    // required this.id,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  State<NumberPlate> createState() => _NumberPlateState();
}

//ナンバープレートのデフォルトの背景色
Color defaultColor = const Color.fromARGB(200, 255, 255, 255);

//ナンバープレートの背景色
Color numberPlateBackgroudColor = defaultColor;

class _NumberPlateState extends State<NumberPlate> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: numberPlateBackgroudColor, // background
      ),
      onPressed: () {
        numberPlateBackgroudColor = const Color.fromARGB(255, 55, 55, 55);
        setState(() {});
      },
      onLongPress: () {
        numberPlateBackgroudColor = defaultColor;
        setState(() {});
      },
      child: Container(
        height: 80,
        color: const Color.fromARGB(0, 0, 0, 0), //透明
        child: Center(
            child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            widget.name,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 36, 69, 41), //ナンバープレートの緑色部分
            ),
          ),
        )),
      ),
    );
  }
}
