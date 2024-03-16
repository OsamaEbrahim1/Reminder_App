import 'package:flutter/material.dart';
import 'package:reminder_app/components/container.dart';
import 'package:reminder_app/components/searchfield.dart';
import 'package:reminder_app/screens/add_item.dart';
import 'package:reminder_app/screens/calender.dart';
import 'package:reminder_app/screens/homepage.dart';
import 'package:reminder_app/screens/setting.dart';

class SoonToExpire extends StatefulWidget {
  const SoonToExpire({super.key});

  @override
  State<SoonToExpire> createState() => _SoonToExpireState();
}

class _SoonToExpireState extends State<SoonToExpire> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 244, 243, 243),
          title: const Text(
            "SoonToExpired",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: BackButton(color: Color(0xFF5DADEC)),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: SearchField(),
                  ),
                  Column(
                    children: [
                      CustomContainer(
                          title: "",
                          cType: "cType",
                          pdate: '29/9/2002',
                          exdate: "10/11/2002"),
                      CustomContainer(
                          title: "",
                          cType: "cType",
                          pdate: '29/9/2002',
                          exdate: "10/11/2002"),
                      CustomContainer(
                          title: "",
                          cType: "cType",
                          pdate: '29/9/2002',
                          exdate: "10/11/2002"),
                      CustomContainer(
                          title: "",
                          cType: "cType",
                          pdate: '29/9/2002',
                          exdate: "10/11/2002"),
                      CustomContainer(
                          title: "",
                          cType: "cType",
                          pdate: '29/9/2002',
                          exdate: "10/11/2002"),
                      CustomContainer(
                          title: "",
                          cType: "cType",
                          pdate: '29/9/2002',
                          exdate: "10/11/2002"),
                    ],
                  ),
                ],
              ),
            )
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
          currentIndex: 0,
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
