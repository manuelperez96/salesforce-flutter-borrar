import 'package:example/components/order_process.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderStatusCard extends StatelessWidget {
  const OrderStatusCard({
    required this.orderId,
    required this.placedOn,
    required this.orderStatus,
    required this.processingStatus,
    required this.packedStatus,
    required this.shippedStatus,
    required this.deliveredStatus,
    super.key,
    this.products,
    this.press,
    this.isCancled = false,
  });

  final String orderId;
  final String placedOn;
  final List<Widget>? products;
  final OrderProcessStatus orderStatus;
  final OrderProcessStatus processingStatus;
  final OrderProcessStatus packedStatus;
  final OrderProcessStatus shippedStatus;
  final OrderProcessStatus deliveredStatus;
  final VoidCallback? press;
  final bool isCancled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius:
          const BorderRadius.all(Radius.circular(defaultBorderRadius)),
      onTap: press,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.all(Radius.circular(defaultBorderRadius)),
              border: Border.all(color: Theme.of(context).dividerColor),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color:
                                  Theme.of(context).textTheme.bodyMedium!.color,
                            ),
                            child: Row(
                              children: [
                                const Text('Order'),
                                const SizedBox(width: defaultPadding / 2),
                                Text('#$orderId'),
                              ],
                            ),
                          ),
                          const SizedBox(height: defaultPadding / 2),
                          Text(
                            'Placed on $placedOn',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/miniRight.svg',
                        height: 24,
                        width: 24,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).dividerColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: OrderProgress(
                    orderStatus: orderStatus,
                    processingStatus: processingStatus,
                    packedStatus: packedStatus,
                    shippedStatus: shippedStatus,
                    deliveredStatus: deliveredStatus,
                    isCanceled: isCancled,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    children: products ?? [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
