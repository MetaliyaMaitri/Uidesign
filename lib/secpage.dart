import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'display.dart';


class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.network('https://thumbs.dreamstime.com/b/light-pink-background-palm-leaves'
              '-vector-illustration-light-pink-background-palm-leaves-174826417.jpg',
            fit: BoxFit.fill,),





        Column(
          children: [
            Container(

              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(9),
              child: Center(
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                      icon:Icon(Icons.arrow_back_ios_new),
                    ),
                    Spacer(),
                    Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),

                  ],
                ),
              ),


            ),
            Expanded(
                child: Container(
                    height: 300,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    child: Card(

                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          child: TextFormField(
                            decoration:const InputDecoration(
                              labelText: 'Full Name',
                            ),

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          child: TextFormField(
                              decoration:const InputDecoration(
                                labelText: 'Last Name',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          child: TextFormField(
                            decoration:const InputDecoration(
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          child: TextFormField(
                            decoration:const InputDecoration(

                              labelText: 'Department',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          child: TextFormField(
                            decoration:const InputDecoration(

                              labelText: 'Password',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),

                        Center(
                          child: Container(

                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.only(top: 45),


                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:Colors.brown.shade800,
                                  padding: EdgeInsets.all(20)

                              ),

                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Page3()),
                                );

                              },
                              child:
                                Icon(Icons.play_arrow,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        )
      ],
    ));
  }
}
