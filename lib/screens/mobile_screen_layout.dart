import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/consts/app_colors.dart';
import 'package:whatsapp_responsive_ui/consts/my_text_style.dart';
import 'package:whatsapp_responsive_ui/widget/pages/contact_list.dart';
import 'package:whatsapp_responsive_ui/widget/reusable_text1.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: ReusableText1(text: "WhatsApp",size: 20,color:Colors.grey ,fontWeight: FontWeight.bold,),
            centerTitle: false,
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.grey,)),
            ],
            bottom:const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: MyTextStyle.appBarTextStyle,
              tabs: [
                Tab(text: "CHATS",),
                Tab(text: "STATUS",),
                Tab(text: "CALLS",),
              ],
            ),
          ),
          body:const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: const Icon(Icons.comment,color: Colors.white,),
          ),
        ));
  }
}
