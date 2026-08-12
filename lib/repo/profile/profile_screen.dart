import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController c1 = TextEditingController();
    TextEditingController c2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark? AppColors.scaffolddark:AppColors.scaffoldlight,
        title: Text('Your Profile',style: TextStyle(
          color: Theme.of(context).brightness==Brightness.dark ? Colors.white:Colors.black,
        )),
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
            Theme.of(context).brightness==Brightness.dark?
                UiHelper.CustomImage(imgurl: 'darkprofile.png') : UiHelper.CustomImage(imgurl: 'lightprofile.png'),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                controller: c1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'First Name (Required)',
                  focusedBorder: InputBorder.none,
                  enabledBorder:InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                controller: c2,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Last Name (Optional)',
                  focusedBorder: InputBorder.none,
                  enabledBorder:InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
