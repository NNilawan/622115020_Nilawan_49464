// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 50,
      ),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 16)),
        Text(
          "Drinks",
          style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text("See all 97",
            style: TextStyle(
                fontSize: 15.00,
                fontWeight: FontWeight.bold,
                color: Colors.green[700])),
        Padding(padding: EdgeInsets.only(right: 16)),
      ]),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/beverage/hot-coffee.png'),
                radius: 45,
              ),
            ],
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: Text(
                'Hot Coffees',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ]),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/beverage/hot-tea.png'),
                radius: 45,
              ),
            ],
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: Text(
                'Hot Tea',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ]),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 16)),
        Text(
          "Food",
          style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text("See all 168",
            style: TextStyle(
                fontSize: 15.00,
                fontWeight: FontWeight.bold,
                color: Colors.green[700])),
        Padding(padding: EdgeInsets.only(right: 16)),
      ]),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/beverage/coffee-at-home.png'),
                radius: 45,
              ),
            ],
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: Text(
                'Coffee at Home',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ]),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        //ROW 2
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/beverage/bakery.jpg'),
                radius: 45,
              ),
            ],
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: Text(
                'Bakery',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ]),
        ],
      ),
    ]);
  }
}
