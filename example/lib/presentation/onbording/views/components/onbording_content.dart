import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class OnbordingContent extends StatelessWidget {
  const OnbordingContent({
    required this.title,
    required this.description,
    required this.image,
    super.key,
    this.isTextOnTop = false,
  });

  final bool isTextOnTop;
  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        if (isTextOnTop)
          OnbordTitleDescription(
            title: title,
            description: description,
          ),
        if (isTextOnTop) const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        if (!isTextOnTop) const Spacer(),
        if (!isTextOnTop)
          OnbordTitleDescription(
            title: title,
            description: description,
          ),
        const Spacer(),
      ],
    );
  }
}

class OnbordTitleDescription extends StatelessWidget {
  const OnbordTitleDescription({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: defaultPadding),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
