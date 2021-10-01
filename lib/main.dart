import 'package:flutter/material.dart';
import 'sub.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: three(),
    );
  }
}
class three extends StatefulWidget {
  const three({Key? key}) : super(key: key);

  @override
  _threeState createState() => _threeState();
}

class _threeState extends State<three> {
  int count =0;
  String sr = "짝인가 아닌가";
  void cntplus(){
    setState(() {
      count++;
      if(count.toString().contains("3")==true||
          count.toString().contains("6")==true||
          count.toString().contains("9")==true){
        sr="짝";
      }
      else{
        sr = "nop";
      }
    });
}
//       count.toString().contains("3");3을 포함하는지
//       count.toString().contains("6");
//       count.toString().contains("9");
  void startagain(){
    setState(() {
      count =0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("$count", style: TextStyle(fontSize: 40),),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: Text(
                sr,style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: ElevatedButton(
                child: Text("count"),
                onPressed: cntplus,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("zero base again"),
        onPressed: startagain,
      ),
    );
  }
}



