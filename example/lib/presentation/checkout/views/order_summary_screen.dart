import 'package:example/constants.dart';
import 'package:example/domain/model/product_cart_entity.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/presentation/basket/bloc/cart_bloc.dart';
import 'package:example/presentation/basket/bloc/cart_state.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<CartBloc>();
    //final cart = (data.state) as CartLoaded;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.order_title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AddressWidget(
                name: data.tempName!,
                address: data.tempAddress!,
                phoneNumber: data.tempPhoneNumber!,
              ),
              const SizedBox(height: defaultPadding),
              const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: ChangePaymentMethod(),
              ),
              const SizedBox(height: defaultPadding),
              OrderSummary(
                currency: ((data.state) as CartLoaded).currentCart.currency!,
                orderTotal:
                    ((data.state) as CartLoaded).currentCart.orderTotal!,
                shippingTotal:
                    ((data.state) as CartLoaded).currentCart.shippingTotal!,
                subTotal: ((data.state) as CartLoaded).currentCart.subtotal!,
                taxTotal: ((data.state) as CartLoaded).currentCart.taxTotal!,
              ),
              const SizedBox(height: defaultPadding * 2),
              ReviewCart(
                products: ((data.state) as CartLoaded).currentCart.productItems,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green.shade200,
        onPressed: () {
          Navigator.pushNamed(context, successsOrderScreenRoute);
        },
        label: Row(
          children: [
            Text(context.l10n.order_create_order),
            const SizedBox(
              width: 5,
            ),
            const Icon(Icons.keyboard_arrow_right_rounded),
          ],
        ),
      ),
    );
  }
}

class ReviewCart extends StatelessWidget {
  const ReviewCart({
    required this.products,
    super.key,
  });

  final List<ProductCartEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.order_summary,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        ...products.map(
          (product) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      product.image,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: MediaQuery.sizeOf(context).width * 0.2,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).width * 0.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              product.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${context.l10n.quantity}: ${product.quantity}',
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${context.l10n.price_per_unit}: '
                            '${product.pricePerUnit} ${product.currency}',
                            style: const TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    required this.orderTotal,
    required this.taxTotal,
    required this.shippingTotal,
    required this.subTotal,
    required this.currency,
    super.key,
  });

  final double orderTotal;
  final double taxTotal;
  final double shippingTotal;
  final double subTotal;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: blackColor40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: defaultPadding,
              right: defaultPadding,
              left: defaultPadding,
            ),
            child: Text(
              context.l10n.order_summary_title,
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(child: Text(context.l10n.order_label_subtotal)),
                Text(
                  '$subTotal $currency',
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(child: Text(context.l10n.order_label_shipping_total)),
                Text(
                  '$shippingTotal $currency',
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(child: Text(context.l10n.order_label_tax_total)),
                Text(
                  '$taxTotal $currency',
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding / 4),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
              vertical: defaultPadding / 4,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    context.l10n.order_label_total,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '$orderTotal $currency',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}

class ChangePaymentMethod extends StatelessWidget {
  const ChangePaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: defaultPadding / 4),
        Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/card.svg'),
              const SizedBox(width: defaultPadding),
              Expanded(
                child: Text(
                  context.l10n.order_change_payment_method,
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: blackColor40,
              ),
            ],
          ),
        ),
        const SizedBox(height: defaultPadding / 4),
        const Divider(),
      ],
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    required this.name,
    required this.phoneNumber,
    required this.address,
    super.key,
  });

  final String name;
  final String phoneNumber;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: blackColor40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/Address.svg'),
              const SizedBox(width: defaultPadding),
              Text(
                context.l10n.order_address_title,
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(name),
          const SizedBox(height: defaultPadding / 4),
          Text(address),
          const SizedBox(height: defaultPadding / 4),
          Text(phoneNumber),
        ],
      ),
    );
  }
}
