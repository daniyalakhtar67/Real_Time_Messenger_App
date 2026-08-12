import 'package:chatapp/repo/contacts/contacts_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../chats/chats_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreScreen()));
          },
              icon: Icon(Icons.more_horiz_outlined,
                  color:Theme.of(context).brightness==Brightness.dark? AppColors.icondarkmode:AppColors.iconlightmode)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsScreen()));
          },
              icon: Icon(Icons.message,
                  color:Theme.of(context).brightness==Brightness.dark? AppColors.icondarkmode:AppColors.iconlightmode)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactsScreen()));
          }, icon: Icon(Icons.person_outline_rounded,
              color: Theme.of(context).brightness==Brightness.dark? AppColors.icondarkmode:AppColors.iconlightmode)),
        ],
      ),
      appBar: AppBar(
        title: Text('More',style: TextStyle(
          color: Theme.of(context).brightness==Brightness.dark? AppColors.textdarkmode:AppColors.textlightmode,
        )),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Theme.of(context).brightness==Brightness.dark?
      AppColors.scaffolddark:AppColors.scaffoldlight,

    );
  }
}
