import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/components/dot_indicators.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/onbording/views/components/onbording_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    _pageController = PageController();
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
        image: 'assets/Illustration/Illustration-0.png',
        imageDarkTheme: 'assets/Illustration/Illustration_darkTheme_0.png',
        title: context.l10n.onBoarding_title1,
        description: context.l10n.onBoarding_subtitle1,
      ),
      Onbord(
        image: 'assets/Illustration/Illustration-1.png',
        imageDarkTheme: 'assets/Illustration/Illustration_darkTheme_1.png',
        title: context.l10n.onBoarding_title2,
        description: context.l10n.onBoarding_subtitle2,
      ),
      Onbord(
        image: 'assets/Illustration/Illustration-2.png',
        imageDarkTheme: 'assets/Illustration/Illustration_darkTheme_2.png',
        title: context.l10n.onBoarding_title3,
        description: context.l10n.onBoarding_subtitle3,
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
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      entryPointScreenRoute,
                      ModalRoute.withName('/entry_point'),
                    );
                  },
                  child: Text(
                    context.l10n.skip,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      _onbordData.length,
                      (index) => Padding(
                        padding:
                            const EdgeInsets.only(right: defaultPadding / 4),
                        child: DotIndicator(isActive: index == _pageIndex),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_pageIndex < _onbordData.length - 1) {
                            _pageController.nextPage(
                              curve: Curves.ease,
                              duration: defaultDuration,
                            );
                          } else {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              entryPointScreenRoute,
                              ModalRoute.withName('/entry_point'),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/Arrow - Right.svg',
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
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
  Onbord({
    required this.image,
    required this.title,
    this.description = '',
    this.imageDarkTheme,
  });
  final String image;
  final String title;
  final String description;
  final String? imageDarkTheme;
}
