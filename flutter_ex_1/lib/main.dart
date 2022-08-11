import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
        ),
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset('assets/images/san.jpg', fit: BoxFit.cover)),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Oeschinen Lake Campground",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "kandersteg, Switzerland",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    AddButton()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 35,
                    ),
                    Text(
                      'CALL',
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
                  Column(children: [
                    Icon(
                      Icons.arrow_right_alt_sharp,
                      color: Colors.blue,
                      size: 35,
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ]),
                  Column(children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 35,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                    "Lake Oeschinen lies at the foot of the bluemlisalp in the berness Alps. Situated 1,578 meters above sealevel, it is one of the lager Alpine Lakes. A gondola ride from kangersetgm followd by a halr"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
          onPressed: _increment,
          icon: const Icon(Icons.star),
          label: Text("$_counter")),
    );
  }
}
