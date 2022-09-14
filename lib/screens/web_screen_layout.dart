import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/widget/my_message_card.dart';
import 'package:whatsapp_responsive_ui/widget/pages/chat_list.dart';
import 'package:whatsapp_responsive_ui/widget/pages/contact_list.dart';
import 'package:whatsapp_responsive_ui/widget/pages/web_chat_appbar.dart';
import 'package:whatsapp_responsive_ui/widget/pages/web_profile_bar.dart';
import 'package:whatsapp_responsive_ui/widget/pages/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/profilePic/backgroundImage.png"),fit:BoxFit.cover
                )
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList())
              ],
            ),
          )
        ],
      )
    );
  }
}
