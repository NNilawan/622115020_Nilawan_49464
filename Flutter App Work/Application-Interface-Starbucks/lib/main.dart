// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:starbucks/toobar/sliver.dart';
// import 'package:starbucks_app/toobar/sliver.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'SoDoSansSemiBold',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sliverbar(),
        bottomSheet: Container(
          color: Colors.grey[900],
          child: Row(
            children: <Widget>[
              Container(
                width: 280,
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text(
                          "Pickup at",
                          style: TextStyle(
                              fontSize: 13.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 7,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Tap to select store',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[350],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey[350],
                                  )),
                            ]),
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                height: 88,
                width: 112,
                padding: EdgeInsets.fromLTRB(24, 16, 16, 16),
                child: Image.asset('assets/images/shopping-bag.png',
                    color: Colors.grey[350], fit: BoxFit.fill),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_rounded),
              label: "Home",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: "Card",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee_maker),
              label: "Order",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "Stores",
              backgroundColor: Colors.black,
            ),
          ],
          onTap: (index) {
            setState(() {
              print(index);
              _currentIndex = index;
            });
          },
        ));
  }
}
