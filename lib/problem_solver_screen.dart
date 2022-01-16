import 'package:flutter/material.dart';
import 'package:rose_hacks_2022/MainPage.dart';
import 'package:rose_hacks_2022/classes/articles.dart';
import 'package:rose_hacks_2022/classes/infoPagePlain.dart';
import 'package:rose_hacks_2022/emergancy_screen.dart';

class ProblemSolver extends StatefulWidget {
  const ProblemSolver({Key? key}) : super(key: key);

  @override
  _ProblemSolverState createState() => _ProblemSolverState();
}

class _ProblemSolverState extends State<ProblemSolver> {
  List<InfoPagePlain> infos = articles.getArticles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        title: Text("Get Information Here!", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("background1final.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              //child: Image.asset('assets/cars.jpg', width: 100, height: 100,),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: infos.length,
                itemBuilder: (BuildContext b, int index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(infos[index].imageName, fit: BoxFit.cover)
                          )    
                        ),
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => infos[index].pageName)
                            ),
                          },
                        ),
                        Positioned(
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: infos[index].color,
                                    padding: EdgeInsets.all(10),
                                    child: Icon(infos[index].icon),
                                  ),
                                ),
                                SizedBox(width: 6),
                                Text(
                                  infos[index].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    backgroundColor: Colors.grey[800]
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}
