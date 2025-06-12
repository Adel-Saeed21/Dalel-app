import 'package:dalel/features/auth/presentation/login_screen.dart';
import 'package:dalel/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter route = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SpalshView()),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),

    GoRoute(
      path: '/loginScreen',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
