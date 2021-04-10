import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
          alignment: Alignment.center,
          child: Container(
            width: 62,
            height: 62,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  'https://scontent.fqnv5-1.fna.fbcdn.net/v/t1.6435-9/150755758_3710777865682911_4552443444989675942_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=aZJywIh_710AX8gK0zy&_nc_ht=scontent.fqnv5-1.fna&oh=355eba4ead1994a7bd4c64f348d2cfa0&oe=60964AAC'),
            ),
          ),
        ),
        AutoSizeText(
          "@CarlosCastrobjj",
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
