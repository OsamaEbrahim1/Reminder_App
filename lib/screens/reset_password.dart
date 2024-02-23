import 'package:flutter/material.dart';
import 'package:reminder_app/screens/code_reset.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  image: AssetImage("images/Forgot.png"),
                  height: 250,
                  width: 250,
                ),
              ),Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //text1
      
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
      
              //text2
      
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Don't Worry sometimes people can forget it too ,Enter your email and we will send you a password reset code ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 114, 114, 114),
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.email,color: Color(0xFF5DADEC),),
                    prefixIconColor: const Color(0xFF5DADEC),
                    hintText: 'Enter Your Email',
                    hintStyle: const TextStyle(color: Color(0xFF5DADEC)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ),
      
              const SizedBox(
                height: 15,
              ),
      
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    backgroundColor: Color(0xFF5DADEC),
                    minimumSize: Size(210, 49),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return CodeReset();
                    }));
                  },
                  child: const Text(
                    "SendCode",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
          ]),
      ),
    );
  }
}
