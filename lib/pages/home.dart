import 'dart:html';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/util/bubble_stories.dart';
import 'package:ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "Telugu",
    "English",
    "Hindi",
    "Kanada",
    "Rajasthan",
  ];
  //const UserHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: const TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: GestureDetector(
                    onTap: (() {
                      debugPrint("you clicked on the Favorite");
                    }),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //scrollDirection: Axis.horizontal,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          //resizeToAvoidBottomInset: false,
          //scroll: ,
          children: [
            Container(
              height: 130,
              /*child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BubbleStories(text: 'Telugu'),
                  BubbleStories(text: 'English'),
                  BubbleStories(text: 'Hindi'),
                  BubbleStories(text: 'Kanada'),
                  BubbleStories(text: 'Rajasthani'),
                ],
              ),*/
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(
                      text: people[index],
                    );
                  }),
            ),
            UserPosts(name: 'harik'),
            UserPosts(name: 'hari kiran'),
          ],
        ),
      ),
    );
  }
}
