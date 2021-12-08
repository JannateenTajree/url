import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),));
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);

  void _showTimePicker(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 30),
               ),
    MaterialButton(
        onPressed: _showTimePicker,
         child: const Padding(
             padding: EdgeInsets.all(20.0),
           child: Text('Pick Time',
           style: TextStyle(color: Colors.blueAccent,fontSize: 30)),
         ),
      color: Colors.indigoAccent,
    ),
          ],
        ),
      ),
    );
  }
}

