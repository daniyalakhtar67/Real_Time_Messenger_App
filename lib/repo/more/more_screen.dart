import 'package:chatapp/repo/contacts/contacts_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../chats/chats_screen.dart';

class MoreScreen extends StatelessWidget {
   MoreScreen({super.key});
  @override
  var data = [
    {
      'name':'Daniyal',
      'phone':'+923199444096',
    }
  ];
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
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text('More',style: TextStyle(
            color: Theme.of(context).brightness==Brightness.dark? AppColors.textdarkmode:AppColors.textlightmode,
          )),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).brightness==Brightness.dark?
        AppColors.scaffolddark:AppColors.scaffoldlight,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            ],
          )
        ],
      ),
    );
  }
}
