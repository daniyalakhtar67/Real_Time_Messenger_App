import 'package:chatapp/repo/more/more_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../contacts/contacts_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats',style: TextStyle(
          color: Theme.of(context).brightness==Brightness.dark? AppColors.textdarkmode:AppColors.textlightmode,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Icon(Icons.post_add_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Icon(Icons.fact_check_outlined),
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).brightness==Brightness.dark?
        AppColors.scaffolddark:AppColors.scaffoldlight,
      ),
    );
  }
}
