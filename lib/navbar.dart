import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clons/home.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      backgroundColor: const Color(0xF71F1E1E),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(45),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(
          right: Radius.circular(45),),
          boxShadow: [
            BoxShadow(
              color: Color(0x3D000000),
              spreadRadius: 30, blurRadius: 20)
            ]
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 30,),
                      SizedBox(width: 45),
                      Text('Setting',
                      style: TextStyle(fontSize: 25,
                        color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      UserAvatar(filename: 'img14.jpeg'),
                      SizedBox(width: 25),
                      Text(
                        'Pooja Tank',
                      style: TextStyle(fontSize: 23, color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 45),
                  DrawerItem(title: 'Account', icon: Icons.key),
                  DrawerItem(title: 'Chats',
                    icon: CupertinoIcons.bubble_left_bubble_right_fill),
                  DrawerItem(title: 'Notifications',
                    icon: Icons.notifications_active),
                  DrawerItem(title: 'Data and Storage', icon: Icons.storage),
                  DrawerItem(title: 'Help', icon: Icons.help),
                  Divider(height: 35,),
                  DrawerItem(title: 'Invite a friend',
                    icon: CupertinoIcons.person_2_fill),
                ],
              ),
              DrawerItem(title: 'Log out', icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key, required this.title, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 45),
            Text(title,
            style: const TextStyle(fontSize: 18,
              color: Colors.white),)
          ],
        ),
      ),
    );
  }
}