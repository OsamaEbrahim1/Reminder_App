import 'package:flutter/material.dart';
import 'package:reminder_app/components/searchfield.dart';
import 'package:reminder_app/screens/add_item.dart';
import 'package:reminder_app/screens/calender.dart';
import 'package:reminder_app/screens/homepage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 244, 243, 243),
          title: const Text(
            "Settings",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: const BackButton(color: Color(0xFF5DADEC)),
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: SearchField(),
                ),
                SizedBox(height: 1),
                ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF5DADEC),
                    size: 25,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 20),
                ),
                SizedBox(height: 1),
                ListTile(
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.notifications,
                    color: Color(0xFF5DADEC),
                    size: 25,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 20),
                ),
                SizedBox(height: 1),
                ListTile(
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.lock,
                    color: Color(0xFF5DADEC),
                    size: 25,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 20),
                ),
                SizedBox(height: 1),
                ListTile(
                  title: Text(
                    "Security",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.security,
                    color: Color(0xFF5DADEC),
                    size: 25,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 20),
                ),
                SizedBox(height: 1),
                ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.error_outline,
                    color: Color(0xFF5DADEC),
                    size: 25,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 20),
                ),
                SizedBox(height: 1),
                ListTile(
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.help,
                    color: Color(0xFF5DADEC),
                    size: 25,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.black, size: 20),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: EdgeInsets.only(right: 250, top: 20),
                  child: Text(
                    "Log out",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF5DADEC),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
              if (index == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              } else if (index == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Calender();
                }));
              } else if (index == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Add();
                }));
              } else if (index == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Settings();
                }));
              }
            });
          },
          currentIndex: 3,
          unselectedFontSize: 15,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xFF5dadec),
          selectedLabelStyle: TextStyle(fontSize: 13),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color.fromARGB(255, 230, 230, 230)),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Calender",
                backgroundColor: Color.fromARGB(255, 230, 230, 230)),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add",
                backgroundColor: Color.fromARGB(255, 230, 230, 230)),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Color.fromARGB(255, 230, 230, 230)),
          ],
        ));
  }
}