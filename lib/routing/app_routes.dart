import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/login_signup_screen.dart';

class RoutesConfig {
   static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginSignUpScreen();
        },

      ),
    ],
  );
}