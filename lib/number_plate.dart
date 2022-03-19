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
Color defaultBackgroundColor = const Color.fromARGB(0, 44, 44, 44);
//ナンバープレートの背景色
Color backgroundColor = defaultBackgroundColor;

//ナンバープレートのデフォルトの緑色部分
Color defaultTextColor = const Color.fromARGB(50, 36, 69, 41);
//ナンバープレートの緑色部分
Color textColor = defaultTextColor;

class _NumberPlateState extends State<NumberPlate> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
      ),
      onPressed: () {
        if (backgroundColor == defaultBackgroundColor) {
          showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                title: const Center(
                  child: Text('見ましたか？'),
                ),
                children: <SimpleDialogOption>[
                  SimpleDialogOption(
                    onPressed: () {
                      backgroundColor =
                          const Color.fromARGB(200, 255, 255, 255);
                      textColor = const Color.fromARGB(255, 36, 69, 41);
                      setState(() {});
                      Navigator.pop(context);
                    },
                    child: const Center(child: Text("はい")),
                  ),
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Center(child: Text("いいえ")),
                  ),
                ],
              );
            },
          );
        }
      },
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: const Center(
                child: Text('リセットしていいですか'),
              ),
              children: <SimpleDialogOption>[
                SimpleDialogOption(
                  onPressed: () {
                    backgroundColor = defaultBackgroundColor;
                    textColor = defaultTextColor;
                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Text('はい'),
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Text('いいえ'),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        height: 80,
        color: const Color.fromARGB(0, 0, 0, 0), //透明
        child: Center(
            child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            widget.name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: textColor, //ナンバープレートの緑色部分
            ),
          ),
        )),
      ),
    );
  }
}
