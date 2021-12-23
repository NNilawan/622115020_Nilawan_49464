import 'package:flutter/material.dart';
import 'package:list_tile/details.dart';
// import 'package:list/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List myData = ["apple", "banana", "papaya"];
    final items = List<String>.generate(1000, (index) => "Item $index");
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: FlutterLogo(),
            title: Text(myData[index]),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
            },
          );
        },
        itemCount: myData.length,
        )
        // body: ListView.builder(itemBuilder: (context, index) {
        //   return ListTile(
        //     onTap: () {},
        //     leading: Icon(Icons.map),
        //     title: Text(items[index]),
        //   );
        // })
        // body: ListView(
        //   children: [
        //     ListTile(
        //       onTap: () {},
        //       leading: FlutterLogo(),
        //       title: Text(myData[0]),
        //     ),
        //     Text("Hello List title"),
        //     Icon(Icons.local_movies),
        //     ListTile(
        //       onTap: () {},
        //       leading: Icon(Icons.phone),
        //       title: Text(myData[1]),
        //     ),
        //     ListTile(
        //       onTap: () {},
        //       leading: FlutterLogo(),
        //       title: Text(myData[2]),
        //       subtitle: Text("Hello Na Ni"),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //   ],
        // )

        );
  }
}
