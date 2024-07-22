import 'package:example/presentation/product/views/components/product_availability_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({
    super.key,
    required this.title,
    required this.brand,
    required this.description,
    required this.rating,
    required this.numOfReviews,
    required this.isAvailable,
  });

  final String title, brand, description;
  final double rating;
  final int numOfReviews;
  final bool isAvailable;

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _animationController2;
  late Animation<double> _myOpacity;
  late Animation<double> _myOpacity2;
  late Animation<double> _myPosition;
  late Animation<double> _myPosition2;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animationController2 = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _animationController2.addListener(() {
      setState(() {});
    });

    _myOpacity = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    _myPosition = Tween<double>(begin: 20, end: 0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _myOpacity2 = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController2, curve: Curves.easeInOut));
    _myPosition2 = Tween<double>(begin: 20, end: 0).animate(CurvedAnimation(
        parent: _animationController2, curve: Curves.easeInOut));

    Future.delayed(
      const Duration(milliseconds: 300),
      () {
        _animationController.forward();
        _animationController2.forward();
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(defaultPadding),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: _myOpacity.value,
              child: Transform.translate(
                offset: Offset(_myPosition.value, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.brand.toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text(
                      widget.title,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: _myOpacity2.value,
              child: Transform.translate(
                offset: Offset(_myPosition2.value, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        ProductAvailabilityTag(isAvailable: widget.isAvailable),
                        const Spacer(),
                        SvgPicture.asset("assets/icons/Star_filled.svg"),
                        const SizedBox(width: defaultPadding / 4),
                        Text(
                          "${widget.rating} ",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text("(${widget.numOfReviews} Reviews)")
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      "Product info",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text(
                      widget.description,
                      style: const TextStyle(height: 1.4),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
