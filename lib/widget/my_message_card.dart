import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/consts/app_colors.dart';
import 'package:whatsapp_responsive_ui/widget/reusable_text1.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessageCard({Key? key,required this.message,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                top: 5,
                left: 10,
                right: 30,
                bottom: 20,
              ),
                child: ReusableText1(text: message,size: 16,),
              ),
              Positioned(
                bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      ReusableText1(text: date, size: 13,color: Colors.white60,),
                      const SizedBox(width: 5,),
                     const Icon(Icons.done_all,color: Colors.white60,size: 20,)
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
