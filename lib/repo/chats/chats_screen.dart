import 'package:chatapp/repo/more/more_screen.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/appcolors.dart';
import '../../constants/cubits/theme.dart';
import '../contacts/contacts_screen.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController c2 = TextEditingController();
  var Storydata = [
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx2MPl0cP4JCKyDUZalUI22n5kjPSKM6BUfWmpLaIeeA&s=10',
      'name':'Akram',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBVBS-B4JvYrb3iDzDIrPjhM8Mi3gO3hC1B7aZ1lej1w&s',
      'name':'kashif',
    },
  ];
  var searchdata = [
    {
      'image'
    },
  ];

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90, // bounded height fixes the ListView crash
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Storydata.length + 1, // +1 for "Your Story"
              itemBuilder: (context, index) {
                // first item = "Your Story" (add button, no ring)
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.grey[800]
                              : Colors.grey[300],
                          child: const Icon(Icons.add, color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        const Text('Your Story', style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  );
                }

                // remaining items = friends' stories, index offset by 1
                final story = Storydata[index - 1];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2.5), // gap between ring & image
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.blue], // story ring color
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(story['image'].toString()),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        story['name'].toString(),
                        style: const TextStyle(fontSize: 11),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Theme.of(context).brightness==Brightness.dark?Colors.grey[800]:Colors.grey[300],
            thickness: 1,
            height: 20,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                UiHelper.CustomTextField(controller: c2, text: 'Search', textinputtype: TextInputType.text, context: context, icondata: Icons.search),

              ],
            ),
          )
        ],
      ),
    );
  }
}
