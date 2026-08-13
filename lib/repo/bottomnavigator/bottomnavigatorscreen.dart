import 'package:chatapp/repo/chats/chats_screen.dart';
import 'package:chatapp/repo/contacts/contacts_screen.dart';
import 'package:chatapp/repo/more/more_screen.dart';
import 'package:flutter/material.dart';

class Bottomnavigatorscreen extends StatefulWidget {
  const Bottomnavigatorscreen({super.key});

  @override
  State<Bottomnavigatorscreen> createState() => _BottomnavigatorscreenState();
}

class _BottomnavigatorscreenState extends State<Bottomnavigatorscreen> {
  int currentindex= 0;
  List<Widget>pages=[
    ContactsScreen(),
    ChatsScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Contacts'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: 'More'),
      ],currentIndex: currentindex,
        onTap: (value){
        setState(() {
          currentindex = value;
        });
        },
      ),
      body: IndexedStack(
        children: pages,
        index: currentindex,
      ),// Navigate to diff pages
    );
  }
}
