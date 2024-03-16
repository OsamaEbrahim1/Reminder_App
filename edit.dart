import 'dart:ffi';
import 'dart:io';
import 'package:reminder_app/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

TextEditingController _date1 = TextEditingController();
TextEditingController _date2 = TextEditingController();
TextEditingController _date3 = TextEditingController();

class _EditState extends State<Edit> {
  bool? _ischecked = false;
  bool? _ischecked1 = false;
  bool? _ischecked2 = false;
  bool? _ischecked3 = false;
  bool? _ischecked4 = false;
  bool? _ischecked5 = false;

  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 243, 243),
        title: const Text(
          "Edit Item",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: const BackButton(color: Color(0xFF5DADEC)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 270, top: 20),
              child: Text(
                "Tittle ",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Add Product Name',
                  hintText: 'Tittle',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF5DADEC)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _date1,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Pro Date "),
                      onTap: () async {
                        DateTime? pickeddate1 = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100));
                        if (pickeddate1 != null) {
                          setState(() {
                            _date1.text = pickeddate1.toString().split(" ")[0];
                          });
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _date2,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Exp Date"),
                      onTap: () async {
                        DateTime? pickeddate2 = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100));
                        if (pickeddate2 != null) {
                          setState(() {
                            _date2.text = pickeddate2.toString().split(" ")[0];
                          });
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _date3,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Start Rminder"),
                      onTap: () async {
                        DateTime? pickeddate3 = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100));
                        if (pickeddate3 != null) {
                          setState(() {
                            _date3.text = pickeddate3.toString().split(" ")[0];
                          });
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Batch Number',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF5DADEC)),
                        borderRadius: BorderRadius.circular(16),
                      ))),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text(
                "Category",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 155,
                  child: CheckboxListTile(
                    title: const Text(
                      "Pils",
                      style: TextStyle(fontSize: 15),
                    ),
                    activeColor: const Color(0xFF5DADEC),
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: false,
                    value: _ischecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _ischecked = newValue;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 150,
                  child: CheckboxListTile(
                    title: const Text(
                      "Syrub",
                      style: TextStyle(fontSize: 15),
                    ),
                    activeColor: const Color(0xFF5DADEC),
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: false,
                    value: _ischecked1,
                    onChanged: (bool? newValue1) {
                      setState(() {
                        _ischecked1 = newValue1;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 155,
                  child: CheckboxListTile(
                    title: const Text(
                      "Injections",
                      style: TextStyle(fontSize: 15),
                    ),
                    activeColor: const Color(0xFF5DADEC),
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: false,
                    value: _ischecked2,
                    onChanged: (bool? newValue2) {
                      setState(() {
                        _ischecked2 = newValue2;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 160,
                  child: CheckboxListTile(
                    title: const Text(
                      "Body care ",
                      style: TextStyle(fontSize: 15),
                    ),
                    activeColor: const Color(0xFF5DADEC),
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: false,
                    value: _ischecked3,
                    onChanged: (bool? newValue3) {
                      setState(() {
                        _ischecked3 = newValue3;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 155,
                  child: CheckboxListTile(
                    title: const Text(
                      "Skin care",
                      style: TextStyle(fontSize: 15),
                    ),
                    activeColor: const Color(0xFF5DADEC),
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: false,
                    value: _ischecked4,
                    onChanged: (bool? newValue4) {
                      setState(() {
                        _ischecked4 = newValue4;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 150,
                  child: CheckboxListTile(
                    title: const Text(
                      "Hair care",
                      style: TextStyle(fontSize: 15),
                    ),
                    activeColor: const Color(0xFF5DADEC),
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: false,
                    value: _ischecked5,
                    onChanged: (bool? newValue5) {
                      setState(() {
                        _ischecked5 = newValue5;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220, top: 20),
              child: Text(
                "Add Photo",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _pickImageFromGalary();
                    },
                    child: Text(
                      "add from galary",
                      style: TextStyle(fontSize: 12, color: Color(0xFF5DADEC)),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _pickImageFromCamera();
                    },
                    child: Text(
                      "add from camera",
                      style:
                          TextStyle(fontSize: 12, color: Color((0xFF5DADEC))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            _selectedImage != null
                ? Image.file(_selectedImage!)
                : Text("please select an image"),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 20, right: 20),
              child: CustomButton(
                title: "Add",
                onPressed: () {
                  //Navigator.pushNamed(context, 'HomePage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _pickImageFromGalary() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
