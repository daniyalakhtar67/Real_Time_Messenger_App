
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../chats/chats_screen.dart';
import '../contacts/contacts_screen.dart';
import '../more/more_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    ContactsScreen(),
     ChatsScreen(),
     MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_2_alt), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More")
        ],
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomdark
            : AppColors.bottomlight,
        selectedIconTheme: IconThemeData(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.icondarkmode
                : AppColors.iconlightmode),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}