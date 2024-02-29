import 'package:flutter/material.dart';
import 'package:reminder_app/screens/all_items.dart';
import 'package:reminder_app/screens/expired.dart';
import 'package:reminder_app/screens/profile.dart';
import 'package:reminder_app/screens/see_all.dart';
import 'package:reminder_app/screens/soon_to_expire.dart';
import 'package:reminder_app/widgets/categories_list_view.dart';
import 'package:reminder_app/widgets/noti_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PersonalProfile();
                }));
              },
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 15, right: 3),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFF5DADEC),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text("User Name",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 120),
                    child: Icon(Icons.person, color: Colors.grey, size: 35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search.....',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF5DADEC)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Recent",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: categoris_list_view(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 2),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AllItems();
                  }));
                },
                child: Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border:
                        Border.all(color: const Color(0xFF5DADEC), width: 1.5),
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.list,
                            size: 30, color: Color(0xFF5dadec)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Text("All Items",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 180),
                        child: Icon(Icons.arrow_forward_ios,
                            size: 23, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SoonToExpire();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color(0xFF5DADEC), width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Icon(Icons.timelapse,
                              size: 30, color: Color(0xFF5dadec)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Text("Soon To Expire",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130),
                          child: Icon(Icons.arrow_forward_ios,
                              size: 23, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Expired();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color(0xFF5DADEC), width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.format_indent_increase_sharp,
                              size: 30, color: Color(0xFF5DADEC)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Text("Expired",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 195),
                          child: Icon(Icons.arrow_forward_ios,
                              size: 23, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 3, left: 10),
                    child: Text("All Reminders",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SeeAll();
                      }));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text("See All",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF5dadec),
                          )),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0),
              child: noti_list_view(),
            )
          ],
        ),
      ),
    );
  }
}




// BottomNavigationBar(
//               items: const <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                 )
//               ],
//             ),