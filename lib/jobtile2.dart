import 'package:challengefordisi_app/detail.dart';
import 'package:challengefordisi_app/theme.dart';
import 'package:flutter/material.dart';

class JobTile2 extends StatelessWidget {
  final String chatImage;
  final String chatName;
  final String chatContent;
  final String chatInfo;

  const JobTile2({required this.chatImage, required this.chatName, required this.chatContent, required this.chatInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
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
          Text(
              chatInfo,
              style: lightgreyTextStyle.copyWith(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}

