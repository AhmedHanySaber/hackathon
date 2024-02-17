import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String name;
  final Widget Function(BuildContext context)? builder;

  const ProfileButton({super.key, this.builder, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => builder(_)));
              },
              child: const Icon(Icons.arrow_forward_outlined))
        ],
      ),
    );
  }
}

class ProfileIconButton extends StatelessWidget {
  final String name;
  final IconData? icon;
  final Widget Function(BuildContext context)? builder;

  const ProfileIconButton(
      {super.key, this.builder, required this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          const SizedBox(width: 5),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => builder(_)));
              },
              child: const Icon(Icons.arrow_forward_outlined))
        ],
      ),
    );
  }
}
