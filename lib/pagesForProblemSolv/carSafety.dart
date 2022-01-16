import 'package:flutter/material.dart';

class CarSafety extends StatelessWidget {
  const CarSafety({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("All About Car Safety"),
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
                  "Road traffic safety refers to the methods and measures used to prevent road users from being killed or seriously injured. Typical road users include pedestrians, cyclists, motorists, vehicle passengers, horse riders, and passengers of on-road public transport (mainly buses and trams).International Transport Forum, Towards Zero, Ambitious Road Safety Targets and the Safe System Approach, Executive Summary page 19[1] As sustainable solutions for classes of road safety have not been identified, particularly low-traffic rural and remote roads, a hierarchy of control should be applied, similar to classifications used to improve occupational safety and health.[2] At the highest level is sustainable prevention of serious injury and death crashes, with sustainable requiring all key result areas to be considered. At the second level is real-time risk reduction, which involves providing users at severe risk with a specific warning to enable them to take mitigating action. The third level is about reducing the crash risk which involves applying the road-design standards and guidelines (such as from AASHTO), improving driver behavior and enforcement.[1] Traffic safety has been studied as a science for more than 75 years.",
                  style: TextStyle(
                    color: Colors.black,
                    //fontFamily: 
                  ),
                ),
              ),
              Image.asset("cars2.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Safety can be improved by reducing the chances of a driver making an error, or by designing vehicles to reduce the severity of crashes that do occur. Most industrialized countries have comprehensive requirements and specifications for safety-related vehicle devices, systems, design, and construction. According to the European Commission Transportation Department it has been estimated that up to 25% of accidents involving trucks can be attributable to inadequate cargo securing. Improperly-secured cargo can cause severe crashes and lead to loss of cargo, loss of lives, loss of vehicles, and can be a hazard for the environment. One way to stabilize, secure, and protect cargo during transportation on the road is by using dunnage bags, which are placed in the voids among the cargo and are designed to prevent the load from moving during transport.",
                  style: TextStyle(
                  color: Colors.black,
                  //fontFamily: 
                  ),
                ),
              ),
              Image.asset("cars3.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Source: https://en.wikipedia.org/wiki/Road_traffic_safety#Cars",
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