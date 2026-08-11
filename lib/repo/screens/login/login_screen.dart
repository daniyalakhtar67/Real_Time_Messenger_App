import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark? Appcolors.scaffloadlight:Appcolors.scaffloadlight,
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<ThemeCubit>(context).toggletheme();
          }, icon: Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (UiHelper.CustomeText(text: 'Enter Your Phone Number', fontsize: 24, context: context,fontweight: FontWeight.bold)),
            (UiHelper.CustomeText(text: 'Please confirm your country code and enter', fontsize: 14, context: context)),
            (UiHelper.CustomeText(text: 'your phone number', fontsize: 14, context: context)),


          ],
        ),
      ),
    );
  }
}
