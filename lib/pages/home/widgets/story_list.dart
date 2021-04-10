import 'package:clone_layout_instagram/pages/home/widgets/story_circle.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      margin:  EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: 16,
        itemBuilder: (_,index) => StoryCircle(),
      ),
    );
  }
}
