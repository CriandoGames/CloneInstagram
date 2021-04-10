import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://scontent.fqnv5-1.fna.fbcdn.net/v/t1.6435-9/150755758_3710777865682911_4552443444989675942_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=aZJywIh_710AX8gK0zy&_nc_ht=scontent.fqnv5-1.fna&oh=355eba4ead1994a7bd4c64f348d2cfa0&oe=60964AAC'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: AutoSizeText(
                  "@CarlosCastrobjj",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Image.network(
            'https://scontent.fqnv5-1.fna.fbcdn.net/v/t1.6435-9/150755758_3710777865682911_4552443444989675942_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=aZJywIh_710AX8gK0zy&_nc_ht=scontent.fqnv5-1.fna&oh=355eba4ead1994a7bd4c64f348d2cfa0&oe=60964AAC'),
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.white,
              ),
              const SizedBox(
                width: 4,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message_outlined),
                color: Colors.white,
              ),
              const SizedBox(
                width: 4,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
                color: Colors.white,
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_border),
                color: Colors.white,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                "Curtido por @carloscarlosbjj e outras 1000 pessoas",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 4,
              ),
              AutoSizeText(
                "Há 1 HORA",
                style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}
