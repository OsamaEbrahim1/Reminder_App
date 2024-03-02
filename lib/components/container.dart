import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
    CustomContainer({super.key, required this.title, required this.cType, required this.pdate, required this.exdate});
  final String title;
  final String cType;
  final String pdate;
  final String exdate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFa0cff4)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
                            color: Colors.grey.withOpacity(.1),
                            spreadRadius: 10,
                            offset: const Offset(15, 15),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tittle: ", style: TextStyle(fontSize: 23)),
                                Text("Type: ", style: TextStyle(fontSize: 23)),
                                Text("Pro Date: ", style: TextStyle(fontSize: 23)),
                                Text("Expire Date:  ", style: TextStyle(fontSize: 23)),
                              ],
                            ),
                              Padding(
                                padding: EdgeInsets.only(left:110),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 75),
                                      child: Icon(Icons.delete,color: Colors.red,size: 24,),
                                    ),
                                    Image(image:AssetImage("images/comitrex.jpg"),height: 100,width: 100,),
                                    Padding(
                                      padding: EdgeInsets.only(left: 75),
                                      child: Icon(Icons.edit_square,color: Color(0xFFa0cff4),size: 24,),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
    );
  }
}