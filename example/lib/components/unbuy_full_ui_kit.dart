import 'dart:async';

import 'package:flutter/material.dart';

class UnBuyFullKit extends StatefulWidget {
  const UnBuyFullKit({super.key, required this.images});

  final List<String> images;

  @override
  State<UnBuyFullKit> createState() => _UnBuyFullKitState();
}

class _UnBuyFullKitState extends State<UnBuyFullKit> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currentPage < widget.images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          return Image.asset(
            widget.images[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
