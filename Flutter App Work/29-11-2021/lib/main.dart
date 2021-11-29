import 'package:flutter/material.dart';

void main() {
  runApp(NiApp());
}

class NiApp extends StatelessWidget {
  // const NiApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator Application"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController quantity = TextEditingController();
  // double price = 10000;
  TextEditingController price = TextEditingController();

  TextEditingController result = TextEditingController();

  @override
  void initState (){
    super.initState();
    result.text = "Buy X snowball: Because each snowball cost 100 THB, you have to pay X THB. it is really delicious na, really cheap too.";
  }
  Widget build(BuildContext context) {
    // return Container(
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                Text("Picture",
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green.shade900.withOpacity(0.2),
                  ),
                ),
                Image.asset('assets/sb2.jpg',
                  height: 100,
                  width: 200,
                ),
                SizedBox(height: 20,),
                Text("Calculate Program"),
                SizedBox(height: 20,),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                    labelText: "Snowball Amount", 
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                    labelText: "Snowball Price", 
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    var cal = double.parse(quantity.text)*double.parse(price.text);
                    print("Snowball quality: ${quantity.text} Total: ${cal} THB");
                    setState(() {
                      result.text = "Buy ${quantity.text} snowball: Because each snowball cost ${price.text} THB, you have to pay ${cal} THB. it is really delicious na, really cheap too.";
                    });
                  }, 
                  child: Text("Calculate"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xffcc8e6c9)),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 30, 50, 70)),
                    textStyle:MaterialStateProperty.all(TextStyle(fontFamily: "maaja", fontSize: 20))
                  ),
                ),
                SizedBox(height: 20,),
                Text(result.text),
              ],
            ),
          ),
        ),
      ],
    );
  }
}