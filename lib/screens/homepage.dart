import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:reminder_app/components/searchfield.dart';
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
              child:  Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15, right: 3),
                    child: CircleAvatar(
                      radius: 30,
                      child: Image.asset("images/avatar.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Text("Osama Ebrahim Lotfy",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 60),
                    child: Icon(Icons.person, color: Colors.grey, size: 35),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: SearchField(),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: const Text("Recent",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: categoris_list_view(),
            ),
const SizedBox(height: 10,),

            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF5DADEC), width: 1.5),
              ),
              child: ListTile(
                title: const Text(
                  "All Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(
                  Icons.list,
                  color: Color(0xFF5DADEC),
                  size: 25,
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 25),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AllItems();
                  }));
                },
              ),
            ),
const SizedBox(height: 10,),

            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF5DADEC), width: 1.5),
              ),
              child: ListTile(
                title: const Text(
                  "Soon To Expired",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(
                  Icons.timelapse,
                  color: Color(0xFF5DADEC),
                  size: 25,
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 25),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SoonToExpire();
                  }));
                },
              ),
            ),
const SizedBox(height: 10,),

            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF5DADEC), width: 1.5),
              ),
              child: ListTile(
                title: const Text(
                  "Expired",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(
                  Icons.format_indent_increase,
                  color: Color(0xFF5DADEC),
                  size: 25,
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 25),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Expired();
                  }));
                },
              ),
            ),
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
      bottomNavigationBar: const GNav(
        gap: 5,
        tabBackgroundColor: Color(0xFF5dadec),
        padding: EdgeInsets.all(14),
        tabs: [
          GButton(
            icon: Icons.home,
            iconSize: 20,
            text: "Home",
          ),
          GButton(
            icon: Icons.calendar_month,
            text: "Calender",
            iconSize: 20,
          ),
          GButton(
            icon: Icons.add_circle,
            text: "Add Item",
            iconSize: 20,
          ),
          GButton(
            icon: Icons.settings,
            text: "Settings",
            iconSize: 20,
          ),
        ],
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