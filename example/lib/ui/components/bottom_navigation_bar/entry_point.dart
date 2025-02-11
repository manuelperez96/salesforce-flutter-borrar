import 'package:animations/animations.dart';
import 'package:example/constants.dart';
import 'package:example/di/app_modules.dart';
import 'package:example/domain/repository/category_repository.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/components/bottom_navigation_bar/cart_animated_icon.dart';
import 'package:example/ui/components/glass_appbar.dart';
import 'package:example/ui/screen/basket/views/cart_screen.dart';
import 'package:example/ui/screen/category/view/category_screen.dart';
import 'package:example/ui/screen/home/bloc/home_bloc.dart';
import 'package:example/ui/screen/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart' hide Image;

class EntryPointProvider extends StatelessWidget {
  const EntryPointProvider({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocProvider<HomeBloc>(
      lazy: false,
      create: (context) => HomeBloc(
        categoryRepository: CategoryRepository(
          categoryApi: inject.get<SFCommerceSDK>().categoryApi,
        ),
        productRepository: ProductRepository(
          productApi: inject.get<SFCommerceSDK>().productApi,
        ),
      )..add(const HomeEvent.loadHomeData()),
      child: const EntryPoint(),
    );
  }
}

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  final List<Widget> _pages = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SvgPicture svgIcon(String src, {Color? color}) {
      return SvgPicture.asset(
        src,
        height: 24,
        colorFilter: ColorFilter.mode(
          color ??
              Theme.of(context).iconTheme.color!.withOpacity(
                    Theme.of(context).brightness == Brightness.dark ? 0.3 : 1,
                  ),
          BlendMode.srcIn,
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // ------------- for transparent app bar ---------------------
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Image.asset(
          'assets/icons/cap_logo.png',
          height: 120,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Search.svg',
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).textTheme.bodyLarge!.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Notification.svg',
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).textTheme.bodyLarge!.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      // body: _pages[_currentIndex],
      body: Stack(
        children: [
          PageTransitionSwitcher(
            transitionBuilder: (child, animation, secondAnimation) {
              return FadeThroughTransition(
                animation: animation,
                secondaryAnimation: secondAnimation,
                child: child,
              );
            },
            child: _pages[_currentIndex],
          ),
          const GlassAppBar(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: defaultPadding / 2),
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : const Color(0xFF101015),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : const Color(0xFF101015),
          type: BottomNavigationBarType.fixed,
          // selectedLabelStyle: TextStyle(color: primaryColor),
          selectedFontSize: 12,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: svgIcon('assets/icons/Shop.svg'),
              activeIcon: svgIcon('assets/icons/Shop.svg', color: primaryColor),
              label: context.l10n.shop,
            ),
            BottomNavigationBarItem(
              icon: svgIcon('assets/icons/Category.svg'),
              activeIcon:
                  svgIcon('assets/icons/Category.svg', color: primaryColor),
              label: context.l10n.categories,
            ),
            BottomNavigationBarItem(
              icon: CartAnimatedIcon(svgIcon: svgIcon('assets/icons/Bag.svg')),
              activeIcon: CartAnimatedIcon(
                svgIcon: svgIcon('assets/icons/Bag.svg', color: primaryColor),
              ),
              label: context.l10n.cart,
            ),
          ],
        ),
      ),
    );
  }
}
