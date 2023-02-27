import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'display.dart';
class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}
class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network('https://static.vecteezy.com/system/resources/previews/004/904/921/non_2x/pink-leaf-background-free-vector.jpg',
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
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration:const InputDecoration(
                                    labelText: 'Full Name',
                                  ), style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration:const InputDecoration(
                                      labelText: 'Last Name',
                                    ),

                                    style: TextStyle(color: Colors.black, fontSize: 15)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration:const InputDecoration(
                                    labelText: 'Email',
                                  ),

                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration:const InputDecoration(

                                    labelText: 'Department',
                                  ),

                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration:const InputDecoration(

                                    labelText: 'Password',
                                  ),

                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ))
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(top: 560.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    color: Color.fromRGBO(92, 64, 51,1.0)
                ),
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
                        MaterialPageRoute(builder: (context) => Page3()),

                      )

                    }
                ),
              ),
            )
          ],
        ));
  }
}