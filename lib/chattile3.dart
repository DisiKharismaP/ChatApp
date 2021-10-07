import 'package:challengefordisi_app/theme.dart';
import 'package:flutter/material.dart';

class ChatTile3 extends StatelessWidget {
  final String chatImage;
  final String chatName;
  final String chatContent;
  final String chatCall;

  const ChatTile3({required this.chatImage, required this.chatName, required this.chatContent, required this.chatCall});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(chatImage, width: 55, height: 55),
          SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  chatName,
                  style: blackTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w600)),
              SizedBox(height: 2.0),
              Text(
                  chatContent,
                  style: lightgreyTextStyle.copyWith(fontSize: 14.0)),
            ],
          ),
          Spacer(),
          Expanded(
            child: Image.asset(
                chatCall, width: 55, height: 55,
            ),
          ),
        ],
      ),
    );
  }
}
