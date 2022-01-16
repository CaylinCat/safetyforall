// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rose_hacks_2022/data_service.dart';
import 'package:rose_hacks_2022/model.dart';

class MapStage extends StatefulWidget {
  const MapStage({Key? key}) : super(key: key);

  @override
  _MapStageState createState() => _MapStageState();
}

class _MapStageState extends State<MapStage> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  final myControl = TextEditingController();
  final dataServ = DataService();

  var theResponse;

  @override
  void dispose() {
    myControl.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  String textHolder = "Hello! Type Your Text to Save a Note";

  @override
  Widget build(BuildContext context) {
    String periodic = _timeOfDay.hour < 12 ? "AM" : "PM";
    int mather = _timeOfDay.hour < 12 ? 0 : 12;
    String single0 =
        _timeOfDay.minute < 10 && _timeOfDay.minute != 0 ? "0" : "";
    String double0 = _timeOfDay.minute == 0 ? "00" : "";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Survival Info"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("background2final.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 4,
                ),
                Text(
                  "${_timeOfDay.hour - mather}:${single0}${double0}${_timeOfDay.minute}",
                  style: TextStyle(fontSize: 70),
                ),
                SizedBox(
                  width: 4,
                ),
                RotatedBox(quarterTurns: 3, child: Text(periodic))
              ],
            ),
            if (theResponse != null)
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue
                      ),
                      child: Image.network(theResponse.iconUrl)
                    ),
                  ),
                  Text(
                    '${theResponse.tempInfo.temp}°',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(theResponse.skyInfo.description)
                ],
              ),
            if (theResponse == null)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Icon(
                      Icons.wb_sunny,
                      color: Colors.yellow,
                    ),
                  ),
                  Text("Input City Name Below to View Weather"),
                ],
              ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: TextField(
                controller: myControl,
                decoration: InputDecoration(labelText: 'City Name'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    textHolder = myControl.text;
                    //print("booop " + textHolder);
                    citySelect();
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)
                    )
                  )
                ),
                child: Text("Get Weather"))
          ],
        ),
      ),
    );
  }

  void citySelect() async {
    final response = await dataServ.getWeather(myControl.text);
    setState(() {
      theResponse = response;
    });
  }
}
