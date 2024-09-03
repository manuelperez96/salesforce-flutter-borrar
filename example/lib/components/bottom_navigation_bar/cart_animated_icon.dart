import 'package:example/components/bottom_navigation_bar/cart_indicator.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartAnimatedIcon extends StatefulWidget {
  const CartAnimatedIcon({required this.svgIcon, super.key});
  final SvgPicture svgIcon;

  @override
  State<CartAnimatedIcon> createState() => _CartAnimatedIconState();
}

class _CartAnimatedIconState extends State<CartAnimatedIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = context.read<CartBloc>().controller;
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutExpo),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(child: widget.svgIcon),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Positioned(
              bottom: 0,
              right: 0,
              // child: Transform(
              //     transform: Matrix4.translationValues(
              //         _animation.value * 5, -_animation.value * 30, 0)
              //       ..scale(1 + _animation.value / 2),
              //     child: child!),
              child: Transform(
                transform:
                    Matrix4.translationValues(0, -_animation.value * 30, 0),
                child: child,
              ),
            );
          },
          child: const CartIndicator(),
        ),
      ],
    );
  }
}
