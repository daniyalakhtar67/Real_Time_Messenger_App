  import 'package:chatapp/constants/appcolors.dart';
  import 'package:chatapp/constants/cubits/theme.dart';
  import 'package:chatapp/repo/chats/chats_screen.dart';
  import 'package:chatapp/repo/more/more_screen.dart';
  import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';

  class ContactsScreen extends StatelessWidget {
    var data = [

      {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ8dOFnXiyeT3SL4e2CrNvIUDxDu5rqEthaO2LXH-_Xg&s=10',
      'name':'Agha',
      'status':'Last seen yesterday',
    },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1LqNGdVKHaMK_VxgONlXLEAXlnz3zqYFr-CgTw9ax2A&s=10',
        'name':'Salman',
        'status':'15 mins ago',
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDZa7rGO5faHoNcN35DCVY1TC9z0PJJKbBsY56LwZcLw&s=10',
        'name':'Faisal',
        'status':'last seen 3 hours',
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFiu0Q4gTQWl9EBhaNg4oTYpte6Oro8K-ggkq7aCrOzQ&s=10',
        'name':'Ali Ahmed',
        'status':'7 days ago',
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2xOoXVGzJsroBdX_NBrNpwfymWb2-1UFeqrFTsSI42w&s=10',
        'name':'Sameer Ahmed',
        'status':'5 mins ago',
      },

      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8ih4iOptEtu_wKzGBcXFsRZQr0IIm1Zo6ek0W8dj6tQ&s=10',
        'name':'Sikandar',
        'status':'7 days ago',
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCNDpUg6cOmhK5D2tH-m17ES2qCPX3J-35qIJPti0hKQ&s=10',
        'name':'Daniyal',
        'status':'38 mins ao',
      }
    ];
    TextEditingController con = TextEditingController();
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
            IconButton(onPressed: (){
              BlocProvider.of<ThemeCubit>(context).toggletheme();
            }, icon: Icon(Icons.dark_mode_outlined,color: Theme.of(context).brightness==Brightness.dark?
            AppColors.icondarkmode:AppColors.iconlightmode,))
          ],
          backgroundColor: Theme.of(context).brightness==Brightness.dark? AppColors.scaffolddark:AppColors.scaffoldlight,
        ),
        body: Padding(
          padding:  EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
            UiHelper.CustomTextField(controller: con, text: 'Search',
            textinputtype: TextInputType.text,
            context: context,
            icondata: (Icons.search)),
              SizedBox(height: 10),
              Expanded(child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(data[index]['image'].toString()),
                      ),
                      title: Text(data[index]['name'].toString()),
                      subtitle: Text(data[index]['status'].toString()),
                    );
                  }
                  ),
              ),
            ],
          ),
        ),
      );
    }
  }
