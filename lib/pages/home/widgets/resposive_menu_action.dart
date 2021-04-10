import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResposiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.smallerThan(name: TABLET)],
          child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://scontent.fqnv5-1.fna.fbcdn.net/v/t1.6435-9/150755758_3710777865682911_4552443444989675942_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=aZJywIh_710AX8gK0zy&_nc_ht=scontent.fqnv5-1.fna&oh=355eba4ead1994a7bd4c64f348d2cfa0&oe=60964AAC'),
        )
      ],
    );
  }
}
