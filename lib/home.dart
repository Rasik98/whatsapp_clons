import 'package:flutter/material.dart';
import 'package:whatsapp_clons/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.settings_outlined,
                      color: Colors.white, size: 27,)
                      ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.search, color: Colors.white,)
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(onPressed: (){},
                    child: const Text('Messages',
                    style: TextStyle(fontSize: 25, color: Colors.white),),
                    ),
                    const SizedBox(width: 30),
                    TextButton(onPressed: (){},
                    child: const Text('Online',
                    style: TextStyle(fontSize: 25, color: Colors.grey),),
                    ),
                    const SizedBox(width: 30),
                    TextButton(onPressed: (){},
                    child: const Text('Stutas',
                    style: TextStyle(fontSize: 25, color: Colors.grey),),
                    ),
                    const SizedBox(width: 30),
                    TextButton(onPressed: (){},
                    child: const Text('Groups',
                    style: TextStyle(fontSize: 25, color: Colors.grey),),
                    ),
                    const SizedBox(width: 30),
                    TextButton(onPressed: (){},
                    child: const Text('More',
                    style: TextStyle(fontSize: 25, color: Colors.grey),),
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 160,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
              height: 220,
              decoration: const BoxDecoration(
              color: Color(0xFF27c1a9),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                 ),
              ),
              child: Column(
                children: [ Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Favorite contacts',
                      style: TextStyle(color: Colors.white),
                      ),
                      IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.more_horiz,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Alka', 'img1.jpeg'),
                        buildContactAvatar('july', 'img2.jpeg'),
                        buildContactAvatar('Ali', 'img3.jpeg'),
                        buildContactAvatar('kalya', 'img4.jpg'),
                        buildContactAvatar('Helena', 'img5.jpeg'),
                        buildContactAvatar('Stive', 'img6.jpeg'),
                        buildContactAvatar('Mikle', 'img7.jpeg'),
                        buildContactAvatar('lara', 'img8.jpeg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 340,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.only(left: 20),
                children: [
                  buildRow('Annika', 'Hello! how are you','img4.jpg', 0),
                  buildRow('Josep', 'Will you visit me','img9.jpeg', 2),
                  buildRow('Atona', 'How to get MORE DEALS 🎁?...','img10.jpeg', 0),
                  buildRow('Alina', 'Are you with Kayla again','img11.jpeg', 8),
                  buildRow('Devid', 'Barrow money please','img12.jpeg', 5),
                  buildRow('Aki', '','img13.jpeg', 0),
                  buildRow('lara', 'Hello! how are you','img8.jpeg', 10),
                  buildRow('Mikle', 'Hello! how are you','img7.jpeg', 0),
                  buildRow('kalya', 'Hello! how are you','img14.jpeg', 20),
                ],
              ),
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF27c1a9),
        child: const Icon(Icons.edit_outlined, size: 35, color: Colors.white,),
        onPressed: (){}
      ),
      drawer: const Navbar(),
    );
  }

  Column buildRow(String name, String messages, String filename, int msgCount) {
    return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Row(
                          children: [
                            UserAvatar(filename: filename),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name,
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 5),
                                Text(messages,
                                style: const TextStyle(color: Colors.black),
                              ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 25),
                          child: Column(
                            children: [
                              const Text('09.35',
                                  style: TextStyle(color: Colors.black),
                                ),
                                const SizedBox(height: 5),
                                if (msgCount > 0)
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: const Color(0xFF27c1a9),
                                  child: Text(msgCount.toString(),
                                  style: const TextStyle(fontSize: 12, color: Colors.white),),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Divider(indent: 70),
                    )
                  ],
                );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          UserAvatar(filename: filename,),
          const SizedBox(height: 5),
          Text(name,
          style: const TextStyle(color: Colors.white,
          fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({super.key, required this.filename,});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: 
        Image.asset('assets/images/$filename').image,
      ),
    );
  }
}