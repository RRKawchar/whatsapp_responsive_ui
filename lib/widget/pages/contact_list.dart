import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/consts/app_colors.dart';
import 'package:whatsapp_responsive_ui/model/info.dart';
import 'package:whatsapp_responsive_ui/widget/reusable_text1.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.only(top: 10),
      child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
                itemBuilder: (context,index){

                return Column(
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:8.0),
                        child: ListTile(
                          title: ReusableText1(text: info[index]['name'].toString(), size: 18,),
                          subtitle: Padding(
                            padding:const EdgeInsets.only(top: 6),
                            child: ReusableText1(text: info[index]['message'].toString(), size: 15,),
                          ),
                          leading: CircleAvatar(
                             radius: 30,
                            backgroundImage: AssetImage(info[index]['profilePic'].toString()),
                          ),
                          trailing:ReusableText1(text: info[index]['time'].toString(), size: 13,color: Colors.grey,),
                        ),
                      ),
                    ),
                    const Divider(color: dividerColor,indent: 85,)
                  ],
                );
                }
            ),



    );
  }
}
