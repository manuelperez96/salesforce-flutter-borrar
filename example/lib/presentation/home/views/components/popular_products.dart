// import 'package:example/components/product/product_card.dart';
// import 'package:example/extensions/context_extensions.dart';
// import 'package:example/models/product_model.dart';
// import 'package:example/route/screen_export.dart';
// import 'package:flutter/material.dart';

// import '../../../../constants.dart';

// class PopularProducts extends StatelessWidget {
//   const PopularProducts({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: defaultPadding / 2),
//         Padding(
//           padding: const EdgeInsets.all(defaultPadding),
//           child: Text(
//             context.localizations.popular_products,
//             style: Theme.of(context).textTheme.titleSmall,
//           ),
//         ),
//         // While loading use 👇
//         // const ProductsSkelton(),
//         SizedBox(
//           height: 220,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             // Find demoPopularProducts on models/ProductModel.dart
//             itemCount: demoPopularProducts.length,
//             itemBuilder: (context, index) => Padding(
//               padding: EdgeInsets.only(
//                 left: defaultPadding,
//                 right: index == demoPopularProducts.length - 1
//                     ? defaultPadding
//                     : 0,
//               ),
//               child: ProductCard(
//                 // showBookmark: true,
//                 product: demoPopularProducts[index],
//                 press: () {
//                   Navigator.pushNamed(
//                     context,
//                     productDetailsScreenRoute,
//                     arguments: demoPopularProducts[index],
//                   );
//                 },
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
