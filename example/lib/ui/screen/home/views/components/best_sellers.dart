// import 'package:example/components/product/product_card.dart';
// import 'package:example/extensions/context_extensions.dart';
// import 'package:example/models/product_model.dart';
// import 'package:flutter/material.dart';

// import '../../../../constants.dart';
// import '../../../../route/route_constants.dart';

// class BestSellers extends StatelessWidget {
//   const BestSellers({
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
//             context.localizations.best_sellers,
//             style: Theme.of(context).textTheme.titleSmall,
//           ),
//         ),
//         // While loading use 👇
//         // const ProductsSkelton(),
//         SizedBox(
//           height: 220,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             // Find demoBestSellersProducts on models/ProductModel.dart
//             itemCount: demoBestSellersProducts.length,
//             itemBuilder: (context, index) => Padding(
//               padding: EdgeInsets.only(
//                 left: defaultPadding,
//                 right: index == demoBestSellersProducts.length - 1
//                     ? defaultPadding
//                     : 0,
//               ),
//               child: ProductCard(
//                 product: demoBestSellersProducts[index],
//                 press: () {
//                   Navigator.pushNamed(context, productDetailsScreenRoute,
//                       arguments: index.isEven);
//                 },
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
