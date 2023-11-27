import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:littlebird/features/accountCreated/account_created_view.dart';
import 'package:littlebird/features/checkout/add_change_card_view.dart';
import 'package:littlebird/features/checkout/checkout_premium_plan_view.dart';
import 'package:littlebird/features/createPin/create_pin_view.dart';
import 'package:littlebird/features/enterOtp/enter_otp_view.dart';
import 'package:littlebird/features/onBoarding/on_boarding.dart';
import 'package:littlebird/features/selectPlan/select_plan_view.dart';
import 'package:littlebird/features/selectRole/select_role.dart';
import 'package:littlebird/features/signin/sign_in_view.dart';
import 'package:littlebird/features/splash/splash_view.dart';
import 'package:littlebird/features/termsAndConditions/terms_and_conditions_view.dart';
import 'package:littlebird/features/verifyPhoneNumber/verify_phone_number_view.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');
final _shellNavigatorDKey = GlobalKey<NavigatorState>(debugLabel: 'shellD');
final _shellNavigatorEKey = GlobalKey<NavigatorState>(debugLabel: 'shellE');
final _shellNavigatorFKey = GlobalKey<NavigatorState>(debugLabel: 'shellF');
final _shellNavigatorGKey = GlobalKey<NavigatorState>(debugLabel: 'shellG');
final _shellNavigatorHKey = GlobalKey<NavigatorState>(debugLabel: 'shellH');

const String SPLASH = "/splash";
const String ONBOARDING = "/onBoarding";
const String SELECTROLE = "/selectRole";
const String SIGNIN = "/signin";
const String VERIFYPHONENUMBER = "/verifyPhoneNumber";
const String ENTEROTPVIEW = "/enterOtpView";
const String CREATEPINVIEW = "/createPinView";
const String SELECTPLANVIEW = "/selectPlanView";
const String CHECKOUTPREMIUMVIEW = "/checkoutPremiumView";
const String ADDCHANGECARDVIEW = "/addChangeCardView";
const String TERMSANDCONDITIONSVIEW = "/termsAndConditionsView";
const String ACCOUNTCREATEDVIEW = "/accountCreatedView";

final goRouter = GoRouter(
  initialLocation: SPLASH,
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: SPLASH, // '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: ONBOARDING,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoarding();
      },
    ),
    GoRoute(
      path: SELECTROLE,
      builder: (BuildContext context, GoRouterState state) {
        return const SelectRoleView();
      },
    ),
    GoRoute(
      path: SIGNIN,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInView();
      },
    ),
    GoRoute(
      path: VERIFYPHONENUMBER,
      builder: (BuildContext context, GoRouterState state) {
        return const VerifyPhoneNumverView();
      },
    ),
    GoRoute(
      path: ENTEROTPVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return const EnterOtpView();
      },
    ),
    GoRoute(
      path: CREATEPINVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return CreatePinView();
      },
    ),
    GoRoute(
      path: SELECTPLANVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return SelectPlanView();
      },
    ),
    GoRoute(
      path: CHECKOUTPREMIUMVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return const CheckoutPremiumPlanView();
      },
    ),
    GoRoute(
      path: ADDCHANGECARDVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return const AddChangeCardView();
      },
    ),
    GoRoute(
      path: TERMSANDCONDITIONSVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAndConditionsView();
      },
    ),
    GoRoute(
      path: ACCOUNTCREATEDVIEW,
      builder: (BuildContext context, GoRouterState state) {
        return const AccountCreatedView();
      },
    ),

    // GoRoute(
    //   path: SIGNUP,
    //   pageBuilder: ((context, state) {
    //     return CustomTransitionPage(
    //       transitionDuration: const Duration(seconds: 1),
    //       // key: state.pageKey,
    //       child: SignUpView(),
    //       transitionsBuilder: ((context, animation, secondaryAnimation, child) {
    //         const begin = Offset(0.0, 1.0);
    //         const end = Offset.zero;
    //         const curve = Curves.ease;

    //         var tween =
    //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       }),
    //     );
    //   }),
    // ),
    // GoRoute(
    //   path: FORGET_PASSWORD,
    //   // builder: (BuildContext context, GoRouterState state) {
    //   //   return ForgetPasswordView();
    //   // },
    //   pageBuilder: ((context, state) {
    //     return CustomTransitionPage(
    //       transitionDuration: const Duration(seconds: 1),
    //       // key: state.pageKey,
    //       child: const ForgetPasswordView(),
    //       transitionsBuilder: ((context, animation, secondaryAnimation, child) {
    //         const begin = Offset(0.0, 1.0);
    //         const end = Offset.zero;
    //         const curve = Curves.ease;

    //         var tween =
    //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       }),
    //     );
    //   }),
    // ),
    // GoRoute(
    //   path: OTP,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return OTPView(
    //       email: state.extra.toString(),
    //     );
    //   },
    // ),
    // GoRoute(
    //   path: '$CREATE_NEW_PASSWORD/:email/:otp',
    //   name: 'newPass',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return CreateNewPasswordView(
    //       email: state.pathParameters['email']!,
    //       otp: state.pathParameters['otp']!,
    //     );
    //   },
    // ),
    // StatefulShellRoute.indexedStack(
    //   builder: (context, state, navigationShell) {
    //     return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
    //   },
    //   branches: [
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorAKey,
    //       routes: [
    //         GoRoute(
    //           path: '/notification',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: NotificationView(),
    //           ),
    //           // routes: [
    //           // GoRoute(
    //           //   path: 'userLov',
    //           //   builder: (context, state) => UsersLovScreen(),
    //           // ),
    //           // GoRoute(
    //           //   path: 'allUsers',
    //           //   builder: (context, state) => AllUsersScreen(),
    //           // ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorBKey,
    //       routes: [
    //         GoRoute(
    //           path: '/dashboard',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: Dashboard(),
    //           ),
    //           // routes: [
    //           // GoRoute(
    //           //   path: 'details',
    //           //   builder: (context, state) => DetailsScreen(label: 'B'),
    //           // ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorCKey,
    //       routes: [
    //         // Shopping Cart
    //         GoRoute(
    //           path: '/teamboard',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: Teamboard(),
    //           ),
    //           // routes: [
    //           // GoRoute(
    //           //   path: 'details',
    //           //   builder: (context, state) => DetailsScreen(label: 'B'),
    //           // ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorDKey,
    //       routes: [
    //         GoRoute(
    //           path: '/activity',
    //           pageBuilder: (context, state) => const NoTransitionPage(
    //             child: TaskActivityView(),
    //           ),
    //           // routes: [
    //           // GoRoute(
    //           //   path: 'details',
    //           //   builder: (context, state) => DetailsScreen(label: 'B'),
    //           // ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorEKey,
    //       routes: [
    //         GoRoute(
    //           path: '/profile',
    //           pageBuilder: (context, state) => NoTransitionPage(
    //             child: ProfileView(),
    //           ),
    //           routes: [
    //             GoRoute(
    //               path: 'updateProfile',
    //               builder: (context, state) => ProfileUpdateView(),
    //             ),
    //             GoRoute(
    //               path: 'manageRole',
    //               builder: (context, state) => ManageRolesLovScreen(),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorFKey,
    //       routes: [
    //         GoRoute(
    //           path: '/addRole',
    //           pageBuilder: (context, state) => NoTransitionPage(
    //             child: AddRoleScreen(),
    //           ),
    //           // routes: [
    //           //   GoRoute(
    //           //     path: 'userLov',
    //           //     builder: (context, state) => UsersLovScreen(),
    //           //   ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorGKey,
    //       routes: [
    //         GoRoute(
    //           path: '/updateRole',
    //           pageBuilder: (context, state) {
    //             RoleLovResponse update = state.extra as RoleLovResponse;
    //             return NoTransitionPage(
    //               child: UpdateRoleScreen(update: update),
    //             );
    //           },
    //           // pageBuilder: (context, state) => NoTransitionPage(
    //           //   child: UpdateRoleScreen(update: ),
    //           // ),
    //           // routes: [
    //           //   GoRoute(
    //           //     path: 'userLov',
    //           //     builder: (context, state) => UsersLovScreen(),
    //           //   ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       navigatorKey: _shellNavigatorHKey,
    //       routes: [
    //         GoRoute(
    //           path: '/userLov',
    //           pageBuilder: (context, state) => NoTransitionPage(
    //             child: UsersLovScreen(),
    //           ),
    //           // routes: [
    //           //   GoRoute(
    //           //     path: 'userLov',
    //           //     builder: (context, state) => UsersLovScreen(),
    //           //   ),
    //           // ],
    //         ),
    //         GoRoute(
    //           path: '/allUsers',
    //           pageBuilder: (context, state) => NoTransitionPage(
    //             child: AllUsersScreen(),
    //           ),
    //           // routes: [
    //           //   GoRoute(
    //           //     path: 'userLov',
    //           //     builder: (context, state) => UsersLovScreen(),
    //           //   ),
    //           // ],
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
  ],
);
