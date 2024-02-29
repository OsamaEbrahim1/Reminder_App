import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text("All Notifications",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              )),
        ),
        leading: BackButton(color: Color(0xFF5DADEC)),
      ),
    );
  }
}
