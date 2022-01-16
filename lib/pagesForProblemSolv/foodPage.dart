import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("All About Food Allergies"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/eatingdisorder.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "More than 50 million Americans have an allergy of some kind. You probably know one of those people or are one yourself. Food allergies are estimated to affect 4% – 6% of children and 4% of adults, according to the Centers for Disease Control and Prevention. Food allergy symptoms are most common in babies and children, but they can appear at any age. You can even develop an allergy to foods you have eaten for years with no problems.",                 
                    style: TextStyle(
                    color: Colors.black,
                    //fontFamily: 
                  ),
                ),
              ),
              Image.asset("crisiskid.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The body’s immune system keeps you healthy by fighting off infections and other dangers to good health. A food allergy reaction occurs when your immune system overreacts to a food or a substance in a food, identifying it as a danger and triggering a protective response.  While allergies tend to run in families, it is impossible to predict whether a child will inherit a parent’s food allergy or whether siblings will have a similar condition. Some research does suggest that the younger siblings of a child with a peanut allergy will also be allergic to peanuts. Symptoms of a food allergy can range from mild to severe. Just because an initial reaction causes few problems doesn’t mean that all reactions will be similar; a food that triggered only mild symptoms on one occasion may cause more severe symptoms at another time.",
                  style: TextStyle(
                  color: Colors.black,
                  //fontFamily: 
                  ),
                ),
              ),
              Image.asset("crisiskid.jpg", height: 200, width: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Source: https://acaai.org/allergies/allergic-conditions/food/",
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