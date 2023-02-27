
import 'package:flutter/material.dart';
import 'package:uidesign/page2.dart';


class Login extends StatefulWidget{

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        body:Stack(
          fit: StackFit.expand,
          children: [
            Image.network('https://static.vecteezy.com/system/resources/previews/004/904/921/non_2x/pink-leaf-background-free-vector.jpg',
              fit: BoxFit.fill,),
            Column(
              children: [
                Expanded(child: Column(
                  children: [
                    Expanded(child:Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius:48,
                                  backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAA'
                                      'AAJbSJIAAAAe1BMVEUAAAD/wMv/xM+cdXy8jZXqsLpaREdkTFDlrLZnTlL/xdD/ws79vsn'
                                      'xtcD5u8bzt8LOm6SqgIchGRqje4LHlp8yJihAMDNHNjnVoKmPbHLdp7C1iJBuU1d6XGEYEhMNCgoqI'
                                      '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'
                                      'nP6T1//mIqJYIxKJRCKRSCQSiUQikUgkEolEIhHf/ANfrmdBh/ZOWQAAAABJRU5ErkJggg=='),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Center(child: Text('KAROLINE',style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 30),)),
                                    ],
                                  ),
                                )
                              ],

                            ),
                          ),
                        )



                    )
                    ),
                    SignIn()




                  ],
                )),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 18.0),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 26.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('CREATE ACCOUNT',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}