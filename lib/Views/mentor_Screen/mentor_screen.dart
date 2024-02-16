import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/mentor_feedback_widget.dart';
import '../widgets/stacked_Container.dart';


class MentorScreen extends StatelessWidget {
  const MentorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StackedContainer(),
                const SizedBox(height: 10),
                const Text(
                  "Fathy Tamer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Head of UI / UX Designs",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SizedBox(
                    height: 20,
                    child: Row(
                      children: [
                        const Text("4.6"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.yellow.shade600,
                                size: 12,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.yellow.shade600,
                                size: 12,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.yellow.shade600,
                                size: 12,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.yellow.shade600,
                                size: 12,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.yellow.shade600,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "(50,000 reviews)",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Fathy Tamer is a skilled UI/UX designer with a passion for teaching and empowering others with knowledge in design principles and programming. With a background in Mechanical Engineering from Santa Clara University, Fathy has transitioned his career to focus on user interface and user experience design. ",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "FeedBack",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    FeedBackWidget(
                      name: "Girish M.",
                      puplishTime: 'a week ago',
                      feedback:
                          'Jose is great at teaching. I would like to learn more and more things from him as he taught difficult topics of python in simple way that I just fell in love with coding. Python is my first coding language, but I will definitely go for…',
                    ),
                    FeedBackWidget(
                      name: "Alok A.",
                      puplishTime: "2 weeks ago",
                      feedback:
                          """Well..wat can I say.. have thoroughly enjoyed every bit of this course material(ie.. lectures and all).. thus far..[way above my expectations.. (to be honest)..this course material has been]""",
                    ),
                  ],
                ),
                const Row(
                  children: [
                    FeedBackWidget(
                      name: "Arman M.",
                      puplishTime: "2 days",
                      feedback:
                          """Some of the important topics are going very fast and also if we try to code along its difficult. But thanks that it has the options to slow the playback speed so we can match our pace and learn the topics aptly.""",
                    ),
                    FeedBackWidget(
                      name: "Girish M.",
                      puplishTime: "a month ago",
                      feedback:
                          """A very good course that touches all the topics in depth. one star missing because i've just found another course that made me fell in love with coding(100 days of code).""",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
