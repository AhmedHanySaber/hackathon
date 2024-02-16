import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/post_tile.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.list,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          const Icon(
            CupertinoIcons.bell,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              child: ClipOval(
                child: Container(
                  color: Colors.grey,
                  width: 40,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: Colors.black.withOpacity(.3),
                      ),
                      fillColor: Colors.grey.withOpacity(.2),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              const SizedBox(height: 10),
              const PostTile(),
              const PostTile(),
            ],
          ),
        ),
      ),
    );
  }
}
