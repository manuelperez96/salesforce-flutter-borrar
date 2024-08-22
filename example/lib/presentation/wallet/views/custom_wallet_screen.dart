import 'package:example/constants.dart';
import 'package:example/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'components/wallet_history_card.dart';

class CustomWalletScreen extends StatelessWidget {
  const CustomWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: CreditCardWidget(
                    cardNumber: '1232 3214 2314 8373',
                    expiryDate: '03/26',
                    cardHolderName: 'Bill Martín Sanchez',
                    cvvCode: '223',
                    cardBgColor: Colors.green.shade600,
                    showBackView: false,
                    cardType: CardType.visa,
                    isSwipeGestureEnabled: false,
                    obscureInitialCardNumber: true,
                    enableFloatingCard: true,
                    onCreditCardWidgetChange: (_) {},
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: defaultPadding / 2),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    "Wallet history",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
                    child: WalletHistoryCard(
                      isReturn: index == 1,
                      date: "JUN 12, 2020",
                      amount: 129,
                      products: [
                        ProductModel(
                          id: 19,
                          image: productDemoImg1,
                          title: "Mountain Warehouse for Women",
                          brandName: "Lipsy london",
                          price: 540,
                          priceAfetDiscount: 420,
                          dicountpercent: 20,
                          isProductAvailable: true,
                        ),
                        ProductModel(
                          id: 20,
                          image: productDemoImg4,
                          title: "Mountain Beta Warehouse",
                          brandName: "Lipsy london",
                          price: 800,
                          isProductAvailable: false,
                        ),
                      ],
                    ),
                  ),
                  childCount: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
