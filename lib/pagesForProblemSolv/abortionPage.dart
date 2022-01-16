import 'package:flutter/material.dart';
class AbortionPage extends StatelessWidget {
  const AbortionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("All about Abortion"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/abortion.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Abortion is very common, and people have abortions for many different reasons.  Only you know what’s best for you, but good information and support can really help you make the decision that is best for your own health and well-being. ",                 
                    style: TextStyle(
                    color: Colors.black,
                    //fontFamily: 
                  ),
                ),
              ),
              Image.asset("gethelp.png", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "If you’re thinking about having an abortion, you’re so not alone. Millions of people face unplanned pregnancies every year, and about 4 out of 10 of them decide to get an abortion. Some people with planned pregnancies also get abortions because of health or safety reasons. Overall, about 1 in 4 women in the U.S. will have an abortion by the time they’re 45 years old. Sometimes, the decision is simple. Other times, it’s complicated. But either way, the decision to have an abortion is personal, and you’re the only one who can make it.  Everyone has their own unique and valid reasons for having an abortion.",
                  style: TextStyle(
                  color: Colors.black,
                  //fontFamily: 
                  ),
                ),
              ),
              Image.asset("crisisadult.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Source: https://www.plannedparenthood.org/learn/abortion/considering-abortion",
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