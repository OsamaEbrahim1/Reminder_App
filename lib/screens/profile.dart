import 'package:flutter/material.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Profile",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            )),
        leading: const BackButton(color: Color(0xFF5DADEC)),
      ),
      body: const Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Color(0xFF5DADEC),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text("User Name",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blueGrey,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2, bottom: 20),
            child: Center(
              child: Text("User Name123@gmail.com",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  )),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(Icons.person, color: Color(0xFF5DADEC), size: 30),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("User Name",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140),
                child: Icon(Icons.edit, color: Color(0xFF5DADEC), size: 25),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(Icons.email, color: Color(0xFF5DADEC), size: 30),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Email",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: Icon(Icons.edit, color: Color(0xFF5DADEC), size: 25),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(Icons.password, color: Color(0xFF5DADEC), size: 30),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Password",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 153),
                child: Icon(Icons.edit, color: Color(0xFF5DADEC), size: 25),
              ),
            ],
          )
        ],
      ),
    );
  }
}
