import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/repo/chats/chats_screen.dart';
import 'package:chatapp/repo/more/more_screen.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
