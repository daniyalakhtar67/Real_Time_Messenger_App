import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/repo/chats/chats_screen.dart';
import 'package:chatapp/repo/more/more_screen.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

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
        title: Text('Contacts',style: TextStyle(
          color: Theme.of(context).brightness==Brightness.dark? AppColors.textdarkmode:AppColors.textlightmode,
        )),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.add,
            color: Theme.of(context).brightness==Brightness.dark?
              AppColors.icondarkmode:AppColors.iconlightmode,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).brightness==Brightness.dark? AppColors.scaffolddark:AppColors.scaffoldlight,
      ),
    );
  }
}
