import 'package:chatapp/repo/contacts/contacts_screen.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/appcolors.dart';
import '../../constants/cubits/theme.dart';
import '../chats/chats_screen.dart';

class MoreScreen extends StatelessWidget {
  var arrMore=[
    {
      'icon':Icons.person,
      'txt':'Account',
    },
    {
      'icon':CupertinoIcons.chat_bubble_fill,
      'txt':'Chats',
    },
    {
      'icon':Icons.notifications_active,
       'txt':'Notification',
    },
    {
      'icon':Icons.privacy_tip,
      'txt':'Privacy',
    },
    {
      'icon':Icons.folder,
      'txt':'Data Usage',
    },
    {
      'icon':Icons.help,
      'txt':'Help',
    },
    {
      'icon':Icons.mail,
      'txt':'Invite Your Friends',
    }
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ IconButton(onPressed: (){
          BlocProvider.of<ThemeCubit>(context).toggletheme();
        }, icon: Icon(Icons.dark_mode_outlined,color: Theme.of(context).brightness==Brightness.dark?
        AppColors.icondarkmode:AppColors.iconlightmode,))],
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
         ListTile(
           leading:  UiHelper.CustomImage(imgurl: Theme.of(context).brightness==Brightness.dark?
           ('darkprofile.png'):('lightprofile.png'),
           ),
           title: UiHelper.CustomText(text: 'Daniyal', fontsize: 14, context: context,fontweight: FontWeight.bold),
           subtitle: UiHelper.CustomText(text: '03199444096', fontsize: 12, context: context),
           trailing: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.forward)),
         ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: arrMore.length,
                itemBuilder: (context,index){
              return ListTile(
                leading: Icon(arrMore[index]['icon']as IconData),
                title: UiHelper.CustomText(text: arrMore[index]['txt'].toString(), fontsize: 14, context: context),
                trailing: Icon(CupertinoIcons.forward),
              );
            }),
          )
        ],
      ),
    );
  }
}
