import 'package:example/components/unbuy_full_ui_kit.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const UnBuyFullKit(
      images: [
        "assets/screens/SEARCH_1.png",
        "assets/screens/Search_2.png",
        "assets/screens/Search_3.png",
        "assets/screens/Search_4.png",
        "assets/screens/Search_5.png",
        "assets/screens/Search_6.png",
        "assets/screens/Search_7.png",
        "assets/screens/Search_8.png",
      ],
    );
  }
}
