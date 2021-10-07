import 'package:challengefordisi_app/theme.dart';
import 'package:flutter/material.dart';

class WhiteBgChatTile extends StatelessWidget {
  final String imageChat;
  final String textChat;
  final String timeChat;

  const WhiteBgChatTile({required this.imageChat, required this.textChat, required this.timeChat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      width: double.infinity,
      height: 100,
      child: Stack(
        children: [
          Positioned(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(right: 40),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            textChat,
                            style: darkgreyTextStyle.copyWith(
                                fontSize: 16),
                              textAlign: TextAlign.end,
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                timeChat,
                                style: darkgreyTextStyle.copyWith(
                                    fontSize: 14.0),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomRight,
              child: Image.asset(
                imageChat,
                width: 40.0,
                height: 40.0,
              ),
            ),
          ),
        ],
      ),
    );

  }
}
