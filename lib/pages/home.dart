import 'package:firstporject/styles/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text('5minuteflutter'),
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(children: mockUsersFromServer()),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          '/temp/user1.webp',
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text('Eu Cat')
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
