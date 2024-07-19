import 'package:example/components/unbuy_full_ui_kit.dart';
import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const UnBuyFullKit(images: [
      "assets/screens/Profile.png",
      "assets/screens/Edit profile.png"
    ]);
  }
}
