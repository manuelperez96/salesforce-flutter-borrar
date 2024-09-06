// import 'package:example/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:sf_commerce_sdk/models/responses/product/product.dart';

// class SelectedSize extends StatelessWidget {
//   const SelectedSize({
//     required this.selectedSize,
//     required this.onPressed,
//     required this.availableValuesSizes,
//     required this.sizes,
//     super.key,
//   });

//   final ValueChanged<ValuesVariation> onPressed;
//   final String selectedSize;
//   final List<String> availableValuesSizes;
//   final List<ValuesVariation> sizes;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: defaultPadding),
//         Padding(
//           padding: const EdgeInsets.all(defaultPadding),
//           child: Text(
//             'Select Size',
//             style: Theme.of(context).textTheme.titleSmall,
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(
//               sizes.length,
//               (index) => Padding(
//                 padding: EdgeInsets.only(
//                   left: index == 0 ? defaultPadding : defaultPadding / 2,
//                 ),
//                 child: SizeButton(
//                   isActive: availableValuesSizes.contains(sizes[index].value),
//                   text: sizes[index].name,
//                   isSelected: selectedSize == sizes[index].value,
//                   press: () => onPressed(sizes[index]),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SizeButton extends StatelessWidget {
//   const SizeButton({
//     required this.text,
//     required this.isSelected,
//     required this.press,
//     required this.isActive,
//     super.key,
//   });

//   final String text;
//   final bool isSelected;
//   final bool isActive;
//   final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       width: 40,
//       child: OutlinedButton(
//         onPressed: isActive ? press : null,
//         style: OutlinedButton.styleFrom(
//           padding: EdgeInsets.zero,
//           shape: const CircleBorder(),
//           side: isSelected ? const BorderSide(color: primaryColor) : null,
//         ),
//         child: Text(
//           text.toUpperCase(),
//           style: TextStyle(
//             color: isActive
//                 ? (isSelected
//                     ? primaryColor
//                     : Theme.of(context).textTheme.bodyLarge!.color)
//                 : Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }
