import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/controllers/home_controller.dart';
import 'package:shop_animation_app/controllers/product_controller.dart';
import 'package:shop_animation_app/models/product.dart';
import 'package:shop_animation_app/screens/details/details_screen.dart';
import 'package:shop_animation_app/screens/details/widgets/cart_details_view.dart';
import 'package:shop_animation_app/screens/details/widgets/cart_short_view.dart';
import 'package:shop_animation_app/screens/home/widgets/home_header.dart';
import 'package:shop_animation_app/screens/home/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = HomeController();
  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: const Color(0xFFEAEAEA),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) => LayoutBuilder(
              builder: (context, constraints) => Stack(
                children: [
                  AnimatedPositioned(
                    duration: panelTransition,
                    top: controller.homeState == HomeState.normal
                        ? headerHeight
                        : -(constraints.maxHeight -
                            cartBarHeight * 2 -
                            headerHeight),
                    left: 0,
                    right: 0,
                    height:
                        constraints.maxHeight - headerHeight - cartBarHeight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(defaultPadding * 1.5),
                          bottomRight: Radius.circular(defaultPadding * 1.5),
                        ),
                      ),
                      child: GridView.builder(
                        itemCount: demoProducts.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: defaultPadding,
                          crossAxisSpacing: defaultPadding,
                        ),
                        itemBuilder: (context, index) => ProductCard(
                          product: demoProducts[index],
                          press: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 500),
                                reverseTransitionDuration:
                                    const Duration(milliseconds: 500),
                                pageBuilder: (context, animation,
                                        secondaryAnimation) =>
                                    FadeTransition(
                                  opacity: animation,
                                  child: DetailsScreen(
                                    product: demoProducts[index],
                                    onAddToCart: () {
                                        Get.find<ProductController>().addToCart(demoProducts[index]);
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: panelTransition,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    height: controller.homeState == HomeState.normal
                        ? cartBarHeight
                        : (constraints.maxHeight - cartBarHeight),
                    child: GestureDetector(
                      onVerticalDragUpdate: _onVerticalGesture,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        color: const Color(0xFFEAEAEA),
                        alignment: Alignment.topLeft,
                        child: AnimatedSwitcher(
                          duration: panelTransition,
                          child: controller.homeState == HomeState.normal
                              ? const CardShortView()
                              : const CartDetailsView(),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: panelTransition,
                    top: controller.homeState == HomeState.normal
                        ? 0
                        : -headerHeight,
                    left: 0,
                    right: 0,
                    height: headerHeight,
                    child: const HomeHeader(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
