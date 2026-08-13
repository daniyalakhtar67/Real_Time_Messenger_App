import 'package:chatapp/repo/more/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/appcolors.dart';
import '../../constants/cubits/theme.dart';
import '../contacts/contacts_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          BlocProvider.of<ThemeCubit>(context).toggletheme();
        }, icon: Icon(Icons.dark_mode_outlined,color: Theme.of(context).brightness==Brightness.dark?
        AppColors.icondarkmode:AppColors.iconlightmode,)),
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
