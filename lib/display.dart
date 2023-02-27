import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;


class Category extends StatefulWidget {
  final String text;
  final Color bgcolor;

  const Category({Key? key, required this.text, required this.bgcolor})
      : super(key: key);

  @override
  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Text(widget.text),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),

          color: widget.bgcolor),
    );
  }
}

class Images extends StatefulWidget {
  final String images;
  const Images({Key? key, required this.images}) : super(key: key);
  @override
  State<Images> createState() => _Images();
}

class _Images extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.images),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              UserAccountsDrawerHeader(
                accountName: Text('Maitri Metaliya',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                accountEmail: Text('maitripatel@gmail.com',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network('data:image/png;base64,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'
                        'nP6T1//mIqJYIxKJRCKRSCQSiUQikUgkEolEIhHf/ANfrmdBh/ZOWQAAAABJRU5ErkJggg==',
                      width: 90,
                      height: 90,
                    ),

                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('/image/model.jpg',
                        ),
                        opacity: 100.0,

                        fit: BoxFit.cover

                    )
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(

                leading: Icon(
                    Icons.apps
                ),

                title: const Text('Categories',),

                onTap: () {
                  Navigator.pop(context);
                },
                trailing: ClipOval(
                  child: Container(
                    width: 20,
                    height: 20,

                    child: Center(child:Icon(
                        Icons.arrow_forward_ios_rounded
                    )
                    ),
                  ),
                ),


              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle_rounded,
                ),
                title: const Text('My Account'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.outbond_rounded,
                ),
                title: const Text('My Orders'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart_rounded,
                ),
                title: const Text('Shopping Cart'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: ClipOval(
                  child: Container(
                    color: Colors.pinkAccent,
                    width: 20,
                    height: 20,

                    child: Center(child: Text('2',style: TextStyle(color: Colors.black,fontSize: 12),)
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                ),
                title: const Text('My favorite'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: ClipOval(
                  child: Container(
                    color: Colors.pinkAccent,
                    width: 20,
                    height: 20,

                    child: Center(child: Text('7',style: TextStyle(color: Colors.black,fontSize: 12),)
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.share_outlined,
                ),
                title: const Text('My Invitations'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                thickness: 2.0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),

                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                thickness: 2.0,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.star,
                ),
                title: const Text('AppSuggetio'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),

        ),
        appBar: AppBar(

          title: Center(
              child: Text(
                "Home",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),


              ),
          ),
          backgroundColor: Colors.white38,
          actions: [
            IconButton(onPressed: (){},
                  icon:Icon(Icons.search,color: Colors.black,),
              ),
          ],


        ),
        // body: SingleChildScrollView(
        //
        //   child: Column(
        //     children: [
        //       SizedBox(
        //         height: 50,
        //       ),
        //       Container(
        //         child: CarouselSlider(
        //           items: [
        //             Images(
        //               images: "assets/image/1.jpg",
        //             ),
        //             Images(
        //               images: "assets/image/2.jpg",
        //             ),
        //             Images(
        //               images: "assets/image/3.jpg",
        //             ),
        //             Images(
        //               images: "assets/image/4.jpg",
        //             ),
        //             Images(
        //               images: "assets/image/5.jpg",
        //             ),
        //           ],
        //
        //           //Slider Container properties
        //           options: CarouselOptions(
        //             height: 200,
        //             enlargeCenterPage: true,
        //             autoPlay: true,
        //             aspectRatio: 16 / 9,
        //             autoPlayCurve: Curves.fastOutSlowIn,
        //             enableInfiniteScroll: true,
        //             autoPlayAnimationDuration: Duration(milliseconds: 800),
        //             viewportFraction: 0.8,
        //           ),
        //         ),
        //       ),
        //
        //       Container(
        //         width: MediaQuery.of(context).size.width,
        //         height: 150,
        //         child: ListView(
        //           scrollDirection: Axis.horizontal,
        //           children: [
        //             Row(
        //               children: [
        //                 Category(
        //                   text: "POPULAR",
        //                   bgcolor: Colors.grey,
        //                 ),
        //                 Category(
        //                   text:"NEW COLLECTION",
        //                   bgcolor: Colors.pink.shade200,
        //                 ),
        //                 Category(
        //                   text: "POPULAR",
        //                   bgcolor: Colors.grey,
        //                 ),
        //                 Category(
        //                   text: "POPULAR",
        //                   bgcolor: Colors.grey,
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //       Container(
        //         width: MediaQuery.of(context).size.width,
        //         height: 190,
        //         child: ListView(
        //           scrollDirection: Axis.horizontal,
        //           children: [
        //             Row(
        //               children: [
        //
        //
        //                 Stack(
        //                   children: [
        //
        //                     Container(
        //
        //                       padding: EdgeInsets.all(6),
        //                       margin: EdgeInsets.all(12),
        //                       child: Image(
        //                         image: AssetImage(
        //                           "assets/image/5.jpg",
        //                         ),
        //                         fit: BoxFit.cover,
        //                       ),
        //                     ),
        //                     Container(
        //                       margin: EdgeInsets.only(left: 18.0,bottom: 16,),
        //                       child: Text('SALE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.grey.shade800),),
        //                     ),
        //                   ],
        //                 ),
        //                 Container(
        //                   padding: EdgeInsets.all(6),
        //                   margin: EdgeInsets.all(12),
        //                   child: Image(
        //                     image: AssetImage(
        //                       "assets/image/2.jpg",
        //                     ),
        //                     fit: BoxFit.cover,
        //                   ),
        //                 ),
        //                 Container(
        //                   padding: EdgeInsets.all(6),
        //                   margin: EdgeInsets.all(12),
        //                   child: Image(
        //                     image: AssetImage(
        //                       "assets/image/3.jpg",
        //                     ),
        //                     fit: BoxFit.cover,
        //                   ),
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SizedBox(
                    height: 200,
                    width: 450,
                    child: Container(
                      child: FutureBuilder<http.Response>(
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return CarouselSlider.builder(
                                itemCount: jsonDecode(snapshot.data!.body).length,
                                itemBuilder: (context, index, realIndex) {
                                  return Image.network(jsonDecode(snapshot.data!.body)[index]['image']);
                                },
                                options: CarouselOptions(
                                  height: 200,
                                  enlargeCenterPage: true,
                                  autoPlay: true,
                                  aspectRatio: 16 / 9,
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enableInfiniteScroll: true,
                                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                                  viewportFraction: 0.8,
                                ));
                          } else {
                            return Center(child: CircularProgressIndicator());
                          }
                        },
                        future: fetchImages(context),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Category(
                            text: "POPULAR",
                            bgcolor: Colors.grey,
                          ),
                          Category(
                            text:"NEW COLLECTION",
                            bgcolor: Colors.pink.shade200,
                          ),
                          Category(
                            text: "POPULAR",
                            bgcolor: Colors.grey,
                          ),
                          Category(
                            text: "POPULAR",
                            bgcolor: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 190,
                  child: Container(
                    child: FutureBuilder<http.Response>(
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return CarouselSlider.builder(
                              itemCount: jsonDecode(snapshot.data!.body).length,
                              itemBuilder: (context, index, realIndex) {
                                return Image.network(jsonDecode(snapshot.data!.body)[index]['image2']);
                              },
                              options: CarouselOptions(
                                height: 200,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration: Duration(milliseconds: 800),
                                viewportFraction: 0.8,
                              ));
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                      future: fetchImages(context),
                    ),
                  ),
                ),

              ],
            ),


          ],
        ),


        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home'

            ),

           BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
               label: 'Shopping'

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
                label:'Categoriy',

            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey[800],
          onTap: _onItemTapped,
        ),

      ),
    );
  }
  List<dynamic> _image = [];

  Future<http.Response> fetchImages(context) async {
    var response = await http.get(
        Uri.parse('https://63180362f6b281877c610cc8.mockapi.io/categories'));
    return response;
  }


}
