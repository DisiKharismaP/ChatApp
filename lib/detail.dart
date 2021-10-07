import 'package:challengefordisi_app/chatroom_tile.dart';
import 'package:challengefordisi_app/chattile3.dart';
import 'package:challengefordisi_app/theme.dart';
import 'package:challengefordisi_app/whitebgchat_tile.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatbgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(30.0),
                    width: double.infinity,
                    height: 115,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0))
                    ),
                    child: Column(
                      children: [
                        ChatTile3(chatImage: 'assets/images/jakartafair.png', chatName: 'Jakarta Fair', chatContent: '14,209 members', chatCall: 'assets/images/call.png')
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 30.0),
                        ChatRoomTile(imageChat: 'assets/images/joshuer.png', textChat: 'How are ya guys?', timeChat: '2:30'),
                        SizedBox(height: 30.0),
                        ChatRoomTile(imageChat: 'assets/images/noname1.png', textChat: 'Find here :P', timeChat: '3:11'),
                        SizedBox(height: 30.0),
                        WhiteBgChatTile(imageChat: 'assets/images/sabrina2.png', textChat: 'Thinking about how to deal\nwith this client from hell...', timeChat: '22:08'),
                        SizedBox(height: 30.0),
                        ChatRoomTile(imageChat: 'assets/images/gabriella.png', textChat: 'Love them', timeChat: '23:11'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    height: 54.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(30.0))
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        children: [
                          Text('Type Message ...', style: typemessageTextStyle.copyWith(fontSize: 16.0)),
                          Spacer(),
                          Image.asset('assets/images/btn_send.png', width: 35, height: 35),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
