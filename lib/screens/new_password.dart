import 'package:flutter/material.dart';

class NewPass extends StatelessWidget {
  const NewPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Color(0xFF5DADEC)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Image(
              image: AssetImage("images/Typing.png"),
              height: 250,
              width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text("Enter New Password:",
                style: TextStyle(
                    color: Color(0xFF7f8184),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'New Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF5dadec),
                    ),
                    hintText: "Enter New Password",
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFa0cff4)),
                      borderRadius: BorderRadius.circular(16),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Confirm It',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF5dadec),
                    ),
                    hintText: "Confirm New Password",
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFa0cff4)),
                      borderRadius: BorderRadius.circular(16),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5DADEC),
                minimumSize: Size(300, 50),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NewPass();
                }));
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
