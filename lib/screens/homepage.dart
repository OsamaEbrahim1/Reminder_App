import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 36, top: 70),
                child: Row(
                  children: [
                    InkWell(
                      child: Image(
                          image: AssetImage("images/google.png"),
                          height: 50,
                          width: 50),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Osama Ebrahim",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 85),
                      child: Icon(Icons.person, color: Colors.grey, size: 35),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Search',
                            hintText: 'Search.....',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFa0cff4)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
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