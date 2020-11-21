import 'package:flutter/material.dart';
import 'constants.dart';
import 'data.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: stories.map((story) {
        return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                border: Border.all(width: 2, color: kBorderColor),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image(
                  image: AssetImage(story.image),
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              story.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        );
      }).toList(),
    );
  }
}
