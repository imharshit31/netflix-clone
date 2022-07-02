// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/assets.dart';
import 'assets.dart';
import 'widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //double _scrollOffSet = 0.0;
  //late ScrollController _scrollController;

  // @override
  // void initState() {
  //   // _scrollController = ScrollController()
  //   //   ..addListener(() {
  //   //     setState(() {
  //   //       _scrollOffSet = _scrollController.offset;
  //   //     });
  //     });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    int ci = 0;

    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.cast,
        ),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Finding Devices to Cast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              textColor: Colors.white,
              fontSize: 16.0);
        },
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(
            //scrollOffSet: _scrollOffSet,
            ),
      ),
      // body: CustomScrollView(
      //   controller: _scrollController,
      //   slivers: [
      //     SliverToBoxAdapter(
      //       child: Container(
      //         height: 2000,
      //         color: Colors.green,
      //       ),
      //     )
      //   ],
      // ),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 435,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        buildCard('trw', '13 Reasons Why'),
                        SizedBox(width: 35),
                        buildCard('you', 'You'),
                        SizedBox(width: 35),
                        buildCard('st', 'Stranger Things'),
                        SizedBox(width: 35),
                        buildCard('mh', 'Money Heist'),
                        SizedBox(width: 35),
                        buildCard('peaky', 'Peaky Blinders'),
                        SizedBox(
                          width: 35,
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Previews',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            buildCard2('bb', 'Breaking Bad'),
                            SizedBox(width: 35),
                            buildCard2('hos', 'House of Secrets'),
                            SizedBox(width: 35),
                            buildCard2('se', 'Sex Education'),
                            SizedBox(width: 35),
                            buildCard2('kf', 'Kota Factory'),
                            SizedBox(width: 35),
                            buildCard2('dd', 'Dark Desire'),
                            SizedBox(
                              width: 35,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            buildCard2('mh', 'Money Heist'),
                            SizedBox(width: 35),
                            buildCard2('kf', 'Kota Factory'),
                            SizedBox(width: 35),
                            buildCard2('peaky', 'Peaky Blinders'),
                            SizedBox(width: 35),
                            buildCard2('bb', 'Breaking Bad'),
                            SizedBox(width: 35),
                            buildCard2('you', 'You'),
                            SizedBox(
                              width: 35,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ci,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_play_next),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        //currentIndex: _selectedIndex,

        selectedItemColor: Colors.white,
        selectedFontSize: 11.0,
        unselectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            ci = index;
          });
        },
      ),
    );
  }
}

Widget buildCard(String s, String name) => Stack(
        // width: 375,
        children: [
          Image.asset(
            width: 375,
            fit: BoxFit.fill,
            'assets/images/$s.jpg',
          ),
          Column(children: [
            SizedBox(height: 295),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              SizedBox(
                width: 135,
              ),
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Playing $name",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
              ),
            ]),
          ]),
        ]);

Widget buildCard2(String s, String name) => Stack(children: [
      GestureDetector(
        onTap: () {
          Fluttertoast.showToast(
              msg: "Playing $name",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        child: CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('assets/images/$s.jpg'),
        ),
      ),
    ]);
