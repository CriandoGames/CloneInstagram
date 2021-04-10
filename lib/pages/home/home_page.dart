import 'package:clone_layout_instagram/pages/home/widgets/post_widget.dart';
import 'package:clone_layout_instagram/pages/home/widgets/resposive_app_bar.dart';
import 'package:clone_layout_instagram/pages/home/widgets/story_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        child: ResposiveAppBar(),
        preferredSize: Size(double.infinity, 52),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: ListView(
            children: [
              StoryList(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
