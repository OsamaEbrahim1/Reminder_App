import 'package:flutter/material.dart';
import 'package:reminder_app/components/buttons.dart';
import 'package:reminder_app/components/textformfield.dart';
import 'package:reminder_app/screens/homepage.dart';
import 'package:reminder_app/screens/reset_password.dart';
import 'package:reminder_app/screens/sign_up.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

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
                image: AssetImage("images/log_in.png"),
                height: 250,
                width: 250,
              ),
            ),
            //email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextForm(
                hinttext: 'Email',
                mycontroller: email,
                label: 'Email',
                validator: (val) {
                  if (val == '') {
                    return "Can't Be Empty";
                  }
                },
                myicon: Icon(Icons.mail, color: Color(0xFF5dadec)),
              ),
            ),

            //password form
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: CustomTextForm(
                hinttext: 'Password',
                mycontroller: password,
                label: 'Password',
                validator: (val) {
                  if (val == '') {
                    return "Can't Be Empty";
                  }
                },
                isDense: true,
                obscureText: true,
                suffixIcon: true,
                myicon: Icon(Icons.lock, color: Color(0xFF5dadec)),
              ),
            ),

            //Forget Password?
            Padding(
              padding: const EdgeInsets.only(right: 175, top: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ResetPassword();
                  }));
                },
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Color(0xFF5DADEC), fontSize: 19),
                ),
              ),
            ),

            //button
            Padding(
                padding: const EdgeInsets.all(18),
                child: CustomButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }),
                    );
                  },
                ),),

            //divider
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xFF7f8184),
                    thickness: 2,
                    indent: 30,
                    endIndent: 10,
                    height: 25,
                  ),
                ),
                Text("Or Login With:",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF7f8184),
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: Divider(
                    color: Color(0xFF7f8184),
                    thickness: 2,
                    indent: 10,
                    endIndent: 30,
                    height: 25,
                  ),
                ),
              ],
            ),

            //images
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Image(
                    image: AssetImage("images/google.png"),
                    height: 50,
                    width: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: InkWell(
                    child: Image(
                      image: AssetImage("images/apple.png"),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                InkWell(
                  child: Image(
                    image: AssetImage("images/facebook.png"),
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),

            //text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an Account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUP();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(color: Color(0xFF55abee), fontSize: 15),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
