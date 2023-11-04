import 'package:firstporject/styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                '/temp/user1.webp',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            'Meow Yummy...   Meow Yummy...   Meow Yummy...   Meow Yummy...   Meow Yummy...   Meow Yummy...   Meow Yummy...   Meow Yummy...   ',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
