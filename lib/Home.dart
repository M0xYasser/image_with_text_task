import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Task 2",
          style: TextStyle(fontFamily: "harabara"),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          rowWithPicture(
              "https://cdn.icon-icons.com/icons2/2201/PNG/512/facebook_logo_square_icon_134009.png",
              "https://cdn.icon-icons.com/icons2/2201/PNG/512/instagram_ig_logo_icon_134013.png",
              "FaceBook",
              "Instagram",
              context),
          rowWithPicture(
              "https://cdn.icon-icons.com/icons2/2201/PNG/512/linkedin_logo_square_icon_134016.png",
              "https://cdn.icon-icons.com/icons2/2201/PNG/512/tiktok_logo_icon_134006.png",
              "Linkedin",
              "Tiktok",
              context),
          rowWithPicture(
              "https://cdn.icon-icons.com/icons2/2201/PNG/512/telegram_logo_circle_icon_134012.png",
              "https://cdn.icon-icons.com/icons2/2201/PNG/512/youtube_logo_square_icon_134024.png",
              "Telegram",
              "Youtube",
              context),
        ],
      ),
    );
  }

  Widget rowWithPicture(url1, url2, txt1, txt2, size) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image(
                image: NetworkImage(url1),
                width: MediaQuery.of(size).size.width / 3,
              ),
              Text(
                txt1,
                style: TextStyle(fontFamily: "harabara"),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(size).size.width / 9,
          ),
          Column(
            children: [
              Image(
                image: NetworkImage(url2),
                width: MediaQuery.of(size).size.width / 3,
              ),
              Text(
                txt2,
                style: TextStyle(fontFamily: "harabara"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
