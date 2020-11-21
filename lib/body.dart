import 'package:flutter/material.dart';
import 'data.dart';
import 'story_list.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Divider(),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Stories', style: TextStyle(fontSize: 14)),
            //       Text('Watch all', style: TextStyle(fontSize: 14)),
            //     ],
            //   ),
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 120,
              child: StoryList(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: posts.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        // TODO: Save all images in assets folder and replace with Image assets
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: AssetImage(posts[index].avatar),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(posts[index].username),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.donut_small),
                              onPressed: () {},
                            ),
                          ],
                        ),

                        FadeInImage(
                          // TODO: Replcae with real placeholder
                          placeholder:
                              AssetImage('assets/images/portrait3.jpg'),
                          image: NetworkImage(posts[index].postImage),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.hearing_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.comment_bank_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.ios_share),
                              onPressed: () {},
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.bookmark_outline_outlined),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'Liked By ',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                TextSpan(text: 'John, Pokemon and 278 others'),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <InlineSpan>[
                                TextSpan(text: posts[index].username),
                                TextSpan(
                                  text: " ${posts[index].caption}",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'November 2020',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
