import 'package:flutter/material.dart';
import 'package:reminder_app/components/buttons.dart';
import 'package:reminder_app/components/textformfield.dart';
import 'package:reminder_app/screens/log_in.dart';
import 'package:reminder_app/widgets/pick_image_widget.dart';

class SignUP extends StatelessWidget {
  SignUP({super.key});
  TextEditingController username = TextEditingController();
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
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage("images/sign_up.png"),
                height: 240,
                width: 240,
              ),
            ),

            //! Image
                const PickImageWidget(),
                const SizedBox(height: 16),

            //user name
            Padding(
              padding: const EdgeInsets.all(8),
              child: CustomTextForm(
                hinttext: 'User Name',
                mycontroller: username,
                label: 'User Name',
                validator: (val) {
                  if (val == '') {
                    return "Can't Be Empty";
                  }
                },
                myicon: Icon(Icons.person, color: Color(0xFF5dadec)),
              ),
            ),

            //email
            Padding(
              padding: const EdgeInsets.all(8),
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

            //password
            Padding(
              padding: const EdgeInsets.all(8),
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
                suffixIcon: true,
                obscureText: true,
                myicon: Icon(Icons.lock, color: Color(0xFF5dadec)),
              ),
            ),

            //button
            Padding(
              padding: const EdgeInsets.all(25),
              child: CustomButton(
                title: "Create Acount",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return LogIn();
                    }),
                  );
                },
              ),
            ),

            //text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an Account..."),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return LogIn();
                    }));
                  },
                  child: Text(
                    "LogIn",
                    style: TextStyle(color: Color(0xFF55abee), fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
