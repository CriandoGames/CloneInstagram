import 'package:auto_size_text/auto_size_text.dart';
import 'package:clone_layout_instagram/pages/home/widgets/resposive_menu_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResposiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        elevation: 1,
        title: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Row(
              children: [
                Expanded(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: AutoSizeText(
                      "Flutter",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'Billabong',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                ResponsiveVisibility(
                  visible: false,
                  visibleWhen: [
                    Condition.largerThan(name: MOBILE),
                  ],
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 200,
                        height: 30,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 15,
                            ),
                            const SizedBox(
                                width: 8
                            ),
                            Expanded(
                              child: TextField(
                                style:
                                TextStyle(color: Colors.white, fontSize: 13),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isCollapsed: true,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ResponsiveVisibility(
                    visible: false,
                    visibleWhen: [
                      Condition.largerThan(name: MOBILE),
                    ],
                    replacement: ResposiveMenuAction(),
                    child: Expanded(child: ResposiveMenuAction())
                )
              ],
            ),
          ),
        ));
  }
}
