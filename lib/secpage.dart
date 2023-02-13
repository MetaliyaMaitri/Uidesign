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


                  padding: EdgeInsets.all(20),

              child: SizedBox(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
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

                        TextFormField(
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

                        TextFormField(
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

                        TextFormField(
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
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment(0.9, 1.1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:Colors.brown.shade900,
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Page3()),
                                    );
                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Processing Data')
                                        ),
                                      );
                                    }
                                  },
                                  child: Icon(Icons.play_arrow)

                              ),
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
