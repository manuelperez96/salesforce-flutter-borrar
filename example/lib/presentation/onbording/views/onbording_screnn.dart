import 'package:example/components/dot_indicators.dart';
import 'package:example/constants.dart';
import 'package:example/extensions/context_extensions.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/onbording_content.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  late List<Onbord> _onbordData;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _onbordData = [
      Onbord(
        image: "assets/Illustration/Illustration-0.png",
        imageDarkTheme: "assets/Illustration/Illustration_darkTheme_0.png",
        title: context.localizations.onboarding_title_1,
        description: context.localizations.onboarding_description_1,
      ),
      Onbord(
        image: "assets/Illustration/Illustration-1.png",
        imageDarkTheme: "assets/Illustration/Illustration_darkTheme_1.png",
        title: context.localizations.onboarding_title_2,
        description: context.localizations.onboarding_description_2,
      ),
      Onbord(
        image: "assets/Illustration/Illustration-2.png",
        imageDarkTheme: "assets/Illustration/Illustration_darkTheme_2.png",
        title: context.localizations.onboarding_title_3,
        description: context.localizations.onboarding_description_3,
      ),
      Onbord(
        image: "assets/Illustration/Illustration-3.png",
        imageDarkTheme: "assets/Illustration/Illustration_darkTheme_3.png",
        title: context.localizations.onboarding_title_4,
        description: context.localizations.onboarding_description_4,
      ),
      Onbord(
        image: "assets/Illustration/Illustration-4.png",
        imageDarkTheme: "assets/Illustration/Illustration_darkTheme_4.png",
        title: context.localizations.onboarding_title_5,
        description: context.localizations.onboarding_description_5,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, entryPointScreenRoute);
                  },
                  child: Text(
                    context.localizations.skip,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _onbordData.length,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemBuilder: (context, index) => OnbordingContent(
                    title: _onbordData[index].title,
                    description: _onbordData[index].description,
                    image: (Theme.of(context).brightness == Brightness.dark &&
                            _onbordData[index].imageDarkTheme != null)
                        ? _onbordData[index].imageDarkTheme!
                        : _onbordData[index].image,
                    isTextOnTop: index.isOdd,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    _onbordData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding / 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageIndex < _onbordData.length - 1) {
                          _pageController.nextPage(
                              curve: Curves.ease, duration: defaultDuration);
                        } else {
                          Navigator.pushNamed(context, entryPointScreenRoute);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Arrow - Right.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

class Onbord {
  final String image, title, description;
  final String? imageDarkTheme;

  Onbord({
    required this.image,
    required this.title,
    this.description = "",
    this.imageDarkTheme,
  });
}
