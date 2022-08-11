import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stataful Sample',
      home: DayAndNight(),
    );
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Today()),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}



class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {

String changeValue = "";


void changeText(){
  setState(() {
    changeValue = (changeValue == "낮" ? "밤" : "낮");

  });
  }
void initState() {
    changeValue = "낮";
  }

@override

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeText();
        print(changeValue);
      },
      child: Container(
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}