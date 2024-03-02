import 'package:flutter/material.dart';
import 'package:reminder_app/components/container.dart';
import 'package:reminder_app/components/searchfield.dart';

class AllItems extends StatelessWidget {
  const AllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Items",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF5DADEC)),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: SearchField(),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                CustomContainer(title: "", cType: "cType", pdate: '29/9/2002', exdate: "10/11/2002"),
                CustomContainer(title: "", cType: "cType", pdate: '29/9/2002', exdate: "10/11/2002"),
                CustomContainer(title: "", cType: "cType", pdate: '29/9/2002', exdate: "10/11/2002"),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
