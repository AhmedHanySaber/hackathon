import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.1),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Post Header
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                      child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.white,
                  )),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fathy Tamer",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(height: 5),
                      Text(
                        "UI/UX designer",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            // Post Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Flexible(
                child: Text(
                  """جزء من الشركات اللي ابطال رووت اشتغلوا فيها ابدأ دلوقتي و حقق حلمك
 التسجيل لدبلومة الـFull Stack لسه مفتوح و تقدر تسجل حالًا من هنا:""",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            // enter your Image here
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
              ),
            ),
            // Likes and comment buttons
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
              child: Column(
                children: [
                  // Likes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.redAccent,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text('9000', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text("200"),
                              SizedBox(width: 5),
                              Text('comments', style: TextStyle(fontSize: 14)),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text("100"),
                              SizedBox(width: 5),
                              Text('share', style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.redAccent,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text("Appreciated")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.comment,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text("Comments")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text("Share")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
