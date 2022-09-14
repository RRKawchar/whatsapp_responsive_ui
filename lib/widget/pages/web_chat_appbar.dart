import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/consts/app_colors.dart';
import 'package:whatsapp_responsive_ui/model/info.dart';
import 'package:whatsapp_responsive_ui/widget/reusable_text1.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
       padding:const EdgeInsets.all(10),
       color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children:[
              const CircleAvatar(
                backgroundImage: AssetImage("assets/profilePic/manun.jpg"),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              ReusableText1(text: info[3]['name'].toString(), size: 18)
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.search,color: Colors.grey,)),
              IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert,color: Colors.grey,)),
            ],
          )
        ],
      ),
    );
  }
}
