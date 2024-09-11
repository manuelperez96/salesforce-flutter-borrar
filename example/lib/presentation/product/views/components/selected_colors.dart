// import 'package:example/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:sf_commerce_sdk/models/responses/product/product.dart';

// class SelectedColors extends StatelessWidget {
//   const SelectedColors({
//     required this.product,
//     required this.onPressed,
//     required this.selectedColor,
//     super.key,
//   });
//   final ValueChanged<ValuesVariation> onPressed;
//   final String selectedColor;
//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     final colors = product.variantInfo!.variationAttributes
//         .firstWhere((element) => element.id == 'color')
//         .valueKeys.map((e) => e.value)
//         .values
//         .map((color) => color)
//         .toList();
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(defaultPadding),
//           child: Text(
//             'Select Color',
//             style: Theme.of(context).textTheme.titleSmall,
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(
//               colors.length,
//               (index) => Padding(
//                 padding: EdgeInsets.only(
//                   left: index == 0 ? defaultPadding : defaultPadding / 2,
//                 ),
//                 child: TextButton(
//                   onPressed: () => onPressed(colors[index]),
//                   child: Text(
//                     colors[index].name,
//                     style: TextStyle(
//                       color: selectedColor == colors[index].value
//                           ? null
//                           : Colors.black,
//                     ),
//                   ),
//                 ),
//                 // TODOfinish this when Saleforce responds (show Colors)

//                 //  ColorDot(
//                 //   color: colors[index],
//                 //   isActive: selectedColorIndex == index,
//                 //   press: () => press(colors[index]),
//                 // ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
