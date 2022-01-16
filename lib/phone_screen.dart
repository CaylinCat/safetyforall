import 'package:flutter/material.dart';
import 'classes/contact.dart';
import 'package:rose_hacks_2022/classes/contacts.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  List<Contact> contactInfo = Contacts.getContacts();
  Contact none = Contact(
      name: "No Searches Found",
      phoneNumber: "",
      description: "",
      link: "assets/car.png",
      selected: false);
  var contactInfoCopy = <Contact>[];
  Contact holder = Contact(
      name: "No Searches Found",
      phoneNumber: "",
      description: "",
      link: "assets/car.png",
      selected: false);

  @override
  void initState() {
    contactInfoCopy.addAll(contactInfo);
    super.initState();
    holder = contactInfoCopy[index];
  }

  void check() {
    if (contactInfoCopy.length == 0) {
      setState(() {
        holder = none;
      });
    } else {
      setState(() {
        holder = contactInfoCopy[index];
      });
    }
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(237, 131, 103, 1),
        title: Text("Get Emergancy Numbers"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("background3final.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              //style: TextStyle(color: Color.fromRGBO(255, 78, 113, 1.0)),
              onChanged: (value) {
                filterSearch(value);
              },
              controller: null,
              decoration: InputDecoration(
              /*  hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                helperStyle: TextStyle(color: Colors.white), */
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                //prefixIconColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  //borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(holder.link),
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(holder.name, style: TextStyle(color: Colors.black),),
          const SizedBox(height: 5),
          Text(holder.phoneNumber, style: TextStyle(color: Colors.black),),
          const SizedBox(height: 15),
          Expanded(
              child: ListView.builder(
            itemCount: contactInfoCopy.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 3.0),
                child: Card(
                  color: contactInfoCopy[index].selected == true
                      ? Colors.amber
                      : Colors.white,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < contactInfoCopy.length; i++) {
                          contactInfoCopy[i].selected = false;
                        }
                        contactInfoCopy[index].selected =
                            !contactInfoCopy[index].selected;

                        this.index = index;
                        holder = contactInfoCopy[index];
                      });
                    },
                    title: Text(contactInfoCopy[index].name),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('${contactInfoCopy[index].link}'),
                    ),
                    subtitle: Text(contactInfoCopy[index].phoneNumber +
                        " | " +
                        contactInfoCopy[index].description),
                  ),
                ),
              );
            },
          )),
        ]),
      ),
      /*  floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Confirm')),*/
    );
  }

  void filterSearch(String hi) {
    // ignore: deprecated_member_use
    List<Contact> dummySearchList = <Contact>[];
    dummySearchList.addAll(contactInfo);
    if (hi.isNotEmpty) {
      // ignore: deprecated_member_use
      List<Contact> dummyListData = <Contact>[];
      dummySearchList.forEach((item) {
        if (item.name.contains(hi)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        //print("pop");
        contactInfoCopy.clear();
        contactInfoCopy.addAll(dummyListData);
        if (dummyListData.isEmpty) {
          check();
        }
      });
      return;
    } else {
      setState(() {
        //print("bop");
        contactInfoCopy.clear();
        contactInfoCopy.addAll(contactInfo);
      });
    }
  }
}
