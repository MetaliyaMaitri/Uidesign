import 'package:flutter/material.dart';
import 'package:uidesign/secpage.dart';


class SignIn extends StatelessWidget {
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
                          decoration:const InputDecoration(
                            labelText: 'Username',
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(8),
                        child: TextFormField(
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
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(top: 170.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                      color: Color.fromRGBO(92, 64, 51,1.0)
                  ),
                  child: MaterialButton(
                      child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
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
              )
            ],
          ),



        ],
      ),
    );
  }
}