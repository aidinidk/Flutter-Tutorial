import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Container'),
      ),
      body: Center(
        child: Text('Center Text'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('svg/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('svg/ic_favorite.svg'),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('svg/ic_messages.svg'),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('svg/ic_person.svg'),
            label: "User",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
