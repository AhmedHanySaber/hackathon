import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedBackWidget extends StatelessWidget {
  final String name;
  final String feedback;
  final String puplishTime;

  const FeedBackWidget(
      {super.key,
      required this.name,
      required this.puplishTime,
      required this.feedback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Flexible(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Text("A"),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.yellow.shade600,
                                    size: 10,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.yellow.shade600,
                                    size: 10,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.yellow.shade600,
                                    size: 10,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              puplishTime,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                feedback,
                style: const TextStyle(fontSize: 9),
              )
            ],
          ),
        ),
      ),
    );
  }
}
