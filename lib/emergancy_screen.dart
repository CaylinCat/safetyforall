import 'package:flutter/material.dart';
import 'classes/contact.dart';
import 'package:rose_hacks_2022/classes/contacts.dart';

class EmergancyScreen extends StatefulWidget {
  const EmergancyScreen({Key? key}) : super(key: key);

  @override
  _EmergancyScreenState createState() => _EmergancyScreenState();
}

class _EmergancyScreenState extends State<EmergancyScreen> {
  Contact bob = new Contact(
      name: "Bob's Hospital",
      phoneNumber: "(282)-494-2894",
      description: "San Marcos",
      link: "",
      selected: false);
  Contact rob = new Contact(
      name: "SJKGob's Hospital", phoneNumber: "(22kewjht", description: "San sjklg", link:"", selected: false);
  final states = ["cat", "bat"];
  List<Contact> contactInfo = Contacts.getContacts();
  int index = 0;
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'Emergancy Contacts',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[700],
        elevation: 0.0,
      ),
      //add scroll here
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('bob.png'), //hospital image
                radius: 60.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                bob.name,
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text("Select your state: "),
                DropdownButton<String>(
                  //todo
                  value: this.value,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: <String>['Alabama', 'Alaska', 'American Samoa', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'District of Columbia', 'Florida', 'Georgia', 'Guam', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Minor Outlying Islands', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Northern Mariana Islands', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Puerto Rico', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'U.S. Virgin Islands', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() {
                    this.value = value;
                  }),
                ),
              ],
            ),
            Divider(
              height: 40.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Phone Number: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              bob.phoneNumber,
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'City: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              bob.name,
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
