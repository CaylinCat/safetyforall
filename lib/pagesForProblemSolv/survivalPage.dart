import 'package:flutter/material.dart';

class SurvivalPage extends StatelessWidget {
  const SurvivalPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("All About Mental Health"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/cars.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "More Coming Soon!",                 
                    style: TextStyle(
                    color: Colors.black,
                    //fontFamily: 
                  ),
                ),
              ),
              Image.asset("cars2.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "",
                  style: TextStyle(
                  color: Colors.black,
                  //fontFamily: 
                  ),
                ),
              ),
              Image.asset("cars3.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Source: ",
                  style: TextStyle(
                  color: Colors.black,
                  //fontFamily: 
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}