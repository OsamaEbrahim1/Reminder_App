import 'package:flutter/material.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Profile",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            )),
        leading: const BackButton(color: Color(0xFF5DADEC)),
      ),
      body: ListView(
        children: [
          Column(children: [
            const SizedBox(height: 16),
          //! Profile Picture
          CircleAvatar(
            radius: 80,
            child: Image.asset("images/avatar.png"),
          ),
          const SizedBox(height: 16),

          //! Name
          const ListTile(
            title: Text("User Name"),
            leading: Icon(Icons.person,color: Color(0xFF5DADEC),size: 25,),
            trailing:Icon(Icons.edit, color: Color(0xFF5DADEC), size: 25), 
          ),
          
          const SizedBox(height: 16),

          //! Email
          const ListTile(
            title: Text("Email"),
            leading: Icon(Icons.email,color: Color(0xFF5DADEC),size: 25,),
            trailing:Icon(Icons.edit, color: Color(0xFF5DADEC), size: 25),
          ),
          const SizedBox(height: 16),

          //! Phone number
          const ListTile(
            title: Text("password"),
            leading: Icon(Icons.lock,color: Color(0xFF5DADEC),size: 25,),
            trailing:Icon(Icons.edit, color: Color(0xFF5DADEC), size: 25),
          ),
          const SizedBox(height: 16),

          ],),
          
        ],
      ),
    );
  }
} 