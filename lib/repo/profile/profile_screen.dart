import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/repo/chats/chats_screen.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {
  void login(String controller){
    if(controller.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter your name')));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsScreen()));
    }
  }
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
      floatingActionButton: UiHelper.CustomButton(buttonnname: 'Save', callback: (){
        login(c1.text);
      }),
    );
  }
}
