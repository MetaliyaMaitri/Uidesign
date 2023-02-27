import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:uidesign/secpage.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

    TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(name ,password) async{
    try{

      Response response = await get(
        Uri.parse('https://630ecc12498924524a7fbab3.mockapi.io/faculties?name=$name&password=$password'),
      );
      print(response.body);

      if(response.statusCode==200){
        var data =jsonDecode(response.body.toString());
        print('account created successfully');
      }
      else{
        print('failed');
      }
    } catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Card(

                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                child: Container(
                  width: 450.0,
                  height: 190.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        child: TextFormField(
                          controller: nameController ,
                          decoration:const InputDecoration(
                            labelText: 'Username',
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(8),
                        child: TextFormField(
                          controller: passwordController,
                          decoration:const InputDecoration(
                            labelText: 'Password',
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(

                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 170.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.zero),
                        color: Color.fromRGBO(92, 64, 51,1.0)

                    ),
                    
                    child: GestureDetector(
                      onTap: (){
                        login(nameController.text.toString(),passwordController.text.toString());
                      },

                      child: MaterialButton(
                          child: const Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          child: Icon(
                            Icons.play_arrow_sharp,size: 30,color: Colors.white,
                          ),
                        ),
                        onPressed: () => {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          )



                        }
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),



        ],
      ),
    );
  }
}