import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 25,
                      backgroundImage:
                          NetworkImage('https://picsum.photos/300?image=7'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15))
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
              ],
            ),
          ),
          Center(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://picsum.photos/400?image=1',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_rounded)),
                    SizedBox(
                      width: 8,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.reply))
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.bookmark_border_rounded))
              ],
            ),
          )
        ],
      ),
      color: Colors.white,
      elevation: 0.0,
      margin: EdgeInsets.all(10.0),
    );
  }
}
