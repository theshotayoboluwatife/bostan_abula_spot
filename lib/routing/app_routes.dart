import 'package:AbulaBostan/features/checkout/presentation/screens/delivery_info.dart';
import 'package:AbulaBostan/features/history/presentation/history_screen.dart';

import 'package:AbulaBostan/features/menu/home_menu_drawer.dart';
import 'package:AbulaBostan/features/order/presentation/screens/food_combo_screen.dart';
import 'package:AbulaBostan/features/order/presentation/screens/order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/login_signup_screen.dart';
import '../features/home/presentation/widgets/home_wrapper.dart';
import '../features/profile/presentation/screens/user_profile_screen.dart';
import '../features/qr_code/generate_qr_code.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = '/home';

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorSettings =
      GlobalKey<NavigatorState>(debugLabel: 'shellSettings');
  static final _shellNavigatorProfile =
      GlobalKey<NavigatorState>(debugLabel: 'shellProfile');
  static GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// HomeWrapper
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeWrapper(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          /// Home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                path: "/home",
                name: "Home",
                builder: (BuildContext context, GoRouterState state) =>
                    const GenerateQRCode(),
                routes: [
                  GoRoute(
                    path: 'menu',
                    name: 'Menu',
                    pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const MenuDrawer(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              FadeTransition(opacity: animation, child: child),
                    ),
                  ),
                  GoRoute(
                    path: 'order',
                    name: 'Order',
                    pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const OrderScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              FadeTransition(opacity: animation, child: child),
                    ),
                  ),
                  GoRoute(
                    path: 'food-combo',
                    name: 'FoodCombo',
                    pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const FoodComboScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              FadeTransition(opacity: animation, child: child),
                    ),
                  ),
                ],
              ),
            ],
          ),

          ///   Profile & Setting
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSettings,
            routes: <RouteBase>[
              GoRoute(
                path: "/settings",
                name: "Settings",
                builder: (BuildContext context, GoRouterState state) =>
                    const UserProfileScreen(),
              ),
              GoRoute(
                path: "/user-profile",
                name: "UserProfile",
                builder: (BuildContext context, GoRouterState state) =>
                    const UserProfileScreen(),
              ),
            ],
          ),

          ///   History
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfile,
            routes: <RouteBase>[
              GoRoute(
                path: "/history",
                name: "History",
                builder: (BuildContext context, GoRouterState state) =>
                    const HistoryScreen(),
              ),
            ],
          ),
        ],
      ),

      /// LoginSignUp
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/login-signup',
        name: "LoginSignUp",
        builder: (context, state) => LoginSignUpScreen(
          key: state.pageKey,
        ),
      ),

      ///checkout
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/checkout-delivery',
          name: 'CheckOutDelivery',
          builder: (context, state) => CheckOutDelivery(key: state.pageKey))
    ],
  );
}
