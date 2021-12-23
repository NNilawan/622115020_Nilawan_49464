import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:second_app/pages/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          builder: (context, snapshot){
            var data = json.decode(snapshot.data.toString());
            return ListView.builder(itemBuilder: (BuildContext context, int index){
              return MyBox(data[index]['title'], data[index]['subtitle'], data[index]['image'], data[index]['detail']);
            },
            itemCount: data.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),)
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String imageLink, String detail){
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subtitle;
    v3 = imageLink;
    v4 = detail;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(16),
      height: 160,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(
            imageLink
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title, 
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 8,),
          Text(
            subtitle, 
            style: TextStyle(
              fontSize: 15,
              color: Colors.white
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: (){
              print("Next Pages >>");
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>DetailPage(v1,v2,v3,v4)));
            }, 
            child: Text("read more")
            )
        ]
      ),
    );
  }

}

