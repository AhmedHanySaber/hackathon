import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackedContainer extends StatelessWidget {
  const StackedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(.5),
      ),
      child: const Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            bottom: 0,
            child: Icon(CupertinoIcons.arrow_right,size: 20,),
          ),
          Positioned(
            left: 5,
            top: 0,
            bottom: 0,
            child: Icon(CupertinoIcons.arrow_left,size: 20,),
          ),
        ],
      ),
    );
  }
}
