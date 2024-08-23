import 'package:example/components/list_tile/divider_list_tile.dart';
import 'package:example/constants.dart';
import 'package:example/extensions/context_extensions.dart';
import 'package:example/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/profile_card.dart';
import 'components/profile_menu_item_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileCard(
            name: "Bill",
            email: "bill_martin@gmail.com",
            imageSrc: "assets/images/man_profile.png",
            // proLableText: "Sliver",
            // isPro: true, if the user is pro
            press: () {
              Navigator.pushNamed(context, userInfoScreenRoute);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding * 1.5),
            child: GestureDetector(
              onTap: () {},
              child: AspectRatio(
                aspectRatio: 1.8,
                child: Image.asset("assets/images/banner_profile.png"),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              context.localizations.account,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ProfileMenuListTile(
            text: context.localizations.orders,
            svgSrc: "assets/icons/Order.svg",
            press: () {
              Navigator.pushNamed(context, ordersScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: context.localizations.returns,
            svgSrc: "assets/icons/Return.svg",
            press: () {},
          ),
          ProfileMenuListTile(
            text: context.localizations.wishlist,
            svgSrc: "assets/icons/Wishlist.svg",
            press: () {},
          ),
          ProfileMenuListTile(
            text: context.localizations.addresses,
            svgSrc: "assets/icons/Address.svg",
            press: () {
              Navigator.pushNamed(context, addressesScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: context.localizations.payment,
            svgSrc: "assets/icons/card.svg",
            press: () {
              //Navigator.pushNamed(context, emptyPaymentScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: context.localizations.wallet,
            svgSrc: "assets/icons/Wallet.svg",
            press: () {
              Navigator.pushNamed(context, customWalletScreenRoute);
            },
          ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              context.localizations.personalization,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          DividerListTileWithTrilingText(
            svgSrc: "assets/icons/Notification.svg",
            title: context.localizations.notification,
            trilingText: "",
            press: () {
              Navigator.pushNamed(context, enableNotificationScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: context.localizations.preferences,
            svgSrc: "assets/icons/Preferences.svg",
            press: () {
              Navigator.pushNamed(context, preferencesScreenRoute);
            },
          ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              context.localizations.settings,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ProfileMenuListTile(
            text: context.localizations.language,
            svgSrc: "assets/icons/Language.svg",
            press: () {
              //Navigator.pushNamed(context, selectLanguageScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: context.localizations.location,
            svgSrc: "assets/icons/Location.svg",
            press: () {},
          ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              context.localizations.help_support,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ProfileMenuListTile(
            text: context.localizations.help,
            svgSrc: "assets/icons/Help.svg",
            press: () {
              //Navigator.pushNamed(context, getHelpScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: context.localizations.faq,
            svgSrc: "assets/icons/FAQ.svg",
            press: () {},
            isShowDivider: false,
          ),
          const SizedBox(height: defaultPadding),

          // Log Out
          ListTile(
            onTap: () {},
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
              "assets/icons/Logout.svg",
              height: 24,
              width: 24,
              colorFilter: const ColorFilter.mode(
                errorColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text(
              context.localizations.log_out,
              style:
                  const TextStyle(color: errorColor, fontSize: 14, height: 1),
            ),
          )
        ],
      ),
    );
  }
}
