import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.radius,
    this.avatarUrl = "https://avatars.githubusercontent.com/u/23008504?v=4"
  });

  final int radius;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
