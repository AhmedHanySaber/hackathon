import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Views/widgets/button.dart';
import 'package:hackathon/Views/widgets/profile_button_tile.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      color: Colors.indigo,
                      width: MediaQuery.of(context).size.width,
                    ),
                    const Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.black,
                          child: Text("a"),
                        )),
                    Positioned(
                        bottom: 0,
                        left: 120,
                        right: 120,
                        child: GeneralButton(
                            height: 40,
                            onPressed: () {},
                            label: "Edit Profile"))
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(.3),
                child: const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    "Mimi Headline",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileButton(name: "Popular"),
                  ProfileButton(name: "Trending"),
                  ProfileButton(name: "Today"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(.3),
                child: const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    "Content",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileIconButton(
                      icon: CupertinoIcons.heart_fill, name: "Favorite"),
                  ProfileIconButton(
                      icon: CupertinoIcons.arrow_down_to_line_alt,
                      name: "DownLoad"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(.3),
                child: const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    "Preference",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileIconButton(
                      icon: Icons.language_sharp, name: "Language"),
                  ProfileIconButton(
                      icon: CupertinoIcons.moon, name: "DarkMode"),
                  ProfileIconButton(
                      icon: CupertinoIcons.wifi, name: "Download via network "),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
