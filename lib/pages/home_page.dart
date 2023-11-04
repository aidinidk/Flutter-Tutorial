import 'dart:js';

import 'package:firstporject/components/post_item.dart';
import 'package:firstporject/components/toolbar.dart';
import 'package:firstporject/styles/app_color.dart';
import 'package:firstporject/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: ToolBar(
          title: "5minuteflutter",
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("svg/ic_location.svg")),
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
          itemCount: users.length,
        ));
  }

  mockUsersFromServer() {
    for (var i = 0; i < 1000; i++) {
      users.add('User number $i');
    }
  }
}
