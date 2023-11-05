import 'package:firstporject/components/post_item.dart';
import 'package:firstporject/components/toolbar.dart';
import 'package:firstporject/config/app_icons.dart';
import 'package:firstporject/config/app_strings.dart';
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
          title: AppStrings.appName,
          actions: [
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(AppIcons.icLocation)),
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
