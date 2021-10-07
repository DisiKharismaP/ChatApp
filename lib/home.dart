import 'package:challengefordisi_app/jobtile.dart';
import 'package:challengefordisi_app/jobtile2.dart';
import 'package:challengefordisi_app/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 35.0, bottom: 30.0),
                        child: Column(
                          children: [
                            Image.asset('assets/images/sabrina.png',
                                width: 100, height: 100),
                            SizedBox(height: 25.0),
                            Text('Sabrina Carpenter',
                                style: whiteTextStyle.copyWith(fontSize: 20.0)),
                            SizedBox(height: 2.0),
                            Text('Travel Freelancer',
                                style: blueTextStyle.copyWith(fontSize: 16.0)),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0, bottom: 26.0),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Friends',
                                style: blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600)
                              ),
                              SizedBox(height: 16.0),
                              JobTile(chatImage: 'assets/images/joshuer.png', chatName: 'Joshuer', chatContent: 'Sorry, you’re not my ty...', chatInfo: 'Now'),
                              SizedBox(height: 16.0),
                              JobTile2(chatImage: 'assets/images/gabriella.png', chatName: 'Gabriella', chatContent: 'I saw it clearly and mig...', chatInfo: '2:30'),
                              SizedBox(height: 30.0),
                              Text(
                                  'Groups',
                                  style: blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600)
                              ),
                              SizedBox(height: 16.0),
                              JobTile2(chatImage: 'assets/images/jakartafair.png', chatName: 'Jakarta Fair', chatContent: 'Why does everyone ca...', chatInfo: '11:11'),
                              SizedBox(height: 16.0),
                              JobTile(chatImage: 'assets/images/angga.png', chatName: 'Angga', chatContent: 'Here here we can go...', chatInfo: '7:11'),
                              SizedBox(height: 16.0),
                              JobTile(chatImage: 'assets/images/bentley.png', chatName: 'Bentley', chatContent: 'The car which does not...', chatInfo: '7:11'),
                              SizedBox(height: 20.0),
                              Center(child: Image.asset('assets/images/add.png', width: 100, height: 100)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
