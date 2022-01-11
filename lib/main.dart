// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF2ac0a6);
const d_white = Colors.white;
const d_black = Colors.black;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: d_black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: d_white,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: d_white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(child: MessageSection())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: d_green,
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          size: 20,
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ["Messages", "Online", "Groups", "Calls"];
  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: d_black,
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(color: Colors.white60, fontSize: 29),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteSection extends StatelessWidget {
  final List favoriteContact = [
    {'name': "Alla", 'profile': "images/avatar/a1.jpg"},
    {
      'name': 'July',
      'profile': 'images/avatar/a2.jpg',
    },
    {
      'name': 'Mikle',
      'profile': 'images/avatar/a3.jpg',
    },
    {
      'name': 'Kler',
      'profile': 'images/avatar/a4.jpg',
    },
    {
      'name': 'Morelle',
      'profile': 'images/avatar/a5.jpg',
    },
    {
      'name': 'Helen',
      'profile': 'images/avatar/a6.jpg',
    },
    {
      'name': 'Steve',
      'profile': 'images/avatar/a7.jpg',
    },
  ];
  FavoriteSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: d_black,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: d_green,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Favorite contacts',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: favoriteContact.map((e) {
                    return Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(e['profile']),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            e['name'],
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ))
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);
  final List messages = [
    {
      'senderProfile': 'images/avatar/a2.jpg',
      'senderName': 'Lara',
      'message': 'Hello! how are youuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu',
      'unRead': 0,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a3.jpg',
      'senderName': 'Kolya',
      'message': 'Will you visit me',
      'unRead': 2,
      'date': '16:03',
    },
    {
      'senderProfile': 'images/avatar/a4.jpg',
      'senderName': 'Mary',
      'message': 'Hey bro',
      'unRead': 6,
      'date': '15:16',
    },
    {
      'senderProfile': 'images/avatar/a5.jpg',
      'senderName': 'Louren',
      'message': 'Are you with Kolya again?',
      'unRead': 0,
      'date': '13:58',
    },
    {
      'senderProfile': 'images/avatar/a6.jpg',
      'senderName': 'Helen',
      'message': 'Borrow money please',
      'unRead': 5,
      'date': '10:42',
    },
    {
      'senderProfile': 'images/avatar/a7.jpg',
      'senderName': 'Stive',
      'message': 'Hello! how are you',
      'unRead': 2,
      'date': '09:30',
    },
    {
      'senderProfile': 'images/avatar/a6.jpg',
      'senderName': 'Helen',
      'message': 'Borrow money please',
      'unRead': 0,
      'date': '09:07',
    },
    {
      'senderProfile': 'images/avatar/a7.jpg',
      'senderName': 'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        children: messages.map((message) {
          return InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    margin: EdgeInsets.only(right: 23),
                    decoration: BoxDecoration(
                        color: d_green,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              message['senderProfile'],
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message['senderName'],
                                  style: GoogleFonts.inter(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  message['message'],
                                  style: GoogleFonts.inter(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.fade,
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(message['date'].toString()),
                              message['unRead']
                            ],)
                        
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
