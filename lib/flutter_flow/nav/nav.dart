import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  KreativeKornerFirebaseUser? initialUser;
  KreativeKornerFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(KreativeKornerFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomePageWidget() : SignInPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : SignInPageWidget(),
          routes: [
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              requireAuth: true,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'HomePageOld',
              path: 'homePageOld',
              builder: (context, params) => HomePageOldWidget(),
            ),
            FFRoute(
              name: 'SignInPage',
              path: 'signInPage',
              builder: (context, params) => SignInPageWidget(),
            ),
            FFRoute(
              name: 'SignUpPage',
              path: 'signUpPage',
              builder: (context, params) => SignUpPageWidget(),
            ),
            FFRoute(
              name: 'ForgotPasswordPage',
              path: 'forgotPasswordPage',
              builder: (context, params) => ForgotPasswordPageWidget(),
            ),
            FFRoute(
              name: 'CashAdvancePage',
              path: 'cashAdvancePage',
              builder: (context, params) => CashAdvancePageWidget(),
            ),
            FFRoute(
              name: 'PersonalLoanOptions',
              path: 'personalLoanOptions',
              builder: (context, params) => PersonalLoanOptionsWidget(),
            ),
            FFRoute(
              name: 'Demo',
              path: 'demo',
              builder: (context, params) => DemoWidget(),
            ),
            FFRoute(
              name: 'Holder',
              path: 'holder',
              builder: (context, params) => HolderWidget(),
            ),
            FFRoute(
              name: 'PaymentAccountsPage',
              path: 'paymentAccountsPage',
              builder: (context, params) => PaymentAccountsPageWidget(),
            ),
            FFRoute(
              name: 'VanManagementPage2',
              path: 'vanManagementPage2',
              builder: (context, params) => VanManagementPage2Widget(),
            ),
            FFRoute(
              name: 'PaymentCardsPage',
              path: 'paymentCardsPage',
              requireAuth: true,
              builder: (context, params) => PaymentCardsPageWidget(),
            ),
            FFRoute(
              name: 'BeneficiariesPage',
              path: 'beneficiariesPage',
              builder: (context, params) => BeneficiariesPageWidget(),
            ),
            FFRoute(
              name: 'MyWallets',
              path: 'myWallets',
              builder: (context, params) => MyWalletsWidget(),
            ),
            FFRoute(
              name: 'BorrowingLandingPage',
              path: 'borrowingLandingPage',
              builder: (context, params) => BorrowingLandingPageWidget(),
            ),
            FFRoute(
              name: 'PersonalLoanOption',
              path: 'personalLoanOption',
              builder: (context, params) => PersonalLoanOptionWidget(
                loanId: params.getParam('loanId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'LiveStreamPage',
              path: 'liveStreamPage',
              builder: (context, params) => LiveStreamPageWidget(),
            ),
            FFRoute(
              name: 'IncomeInsurancePlans',
              path: 'incomeInsurancePlans',
              builder: (context, params) => IncomeInsurancePlansWidget(),
            ),
            FFRoute(
              name: 'IncomeProtectionApplyPage',
              path: 'incomeProtectionApplyPage',
              builder: (context, params) => IncomeProtectionApplyPageWidget(
                ipiId: params.getParam('ipiId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'NewsFeedPage',
              path: 'newsFeedPage',
              builder: (context, params) => NewsFeedPageWidget(),
            ),
            FFRoute(
              name: 'CreatePostPage',
              path: 'createPostPage',
              builder: (context, params) => CreatePostPageWidget(),
            ),
            FFRoute(
              name: 'CarDetails',
              path: 'carDetails',
              builder: (context, params) => CarDetailsWidget(),
            ),
            FFRoute(
              name: 'CarDetails2',
              path: 'carDetails2',
              builder: (context, params) => CarDetails2Widget(),
            ),
            FFRoute(
              name: 'PropertyDetailsPage',
              path: 'propertyDetailsPage',
              builder: (context, params) => PropertyDetailsPageWidget(
                id: params.getParam('id', ParamType.String),
                checkoutId: params.getParam('checkoutId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'PropertiesLists',
              path: 'propertiesLists',
              builder: (context, params) => PropertiesListsWidget(),
            ),
            FFRoute(
              name: 'CheckoutPage',
              path: 'checkoutPage',
              builder: (context, params) => CheckoutPageWidget(
                checkoutId: params.getParam('checkoutId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'BorrowingManagementPage',
              path: 'borrowingManagementPage',
              builder: (context, params) => BorrowingManagementPageWidget(),
            ),
            FFRoute(
              name: 'RapydSharesPage',
              path: 'rapydSharesPage',
              builder: (context, params) => RapydSharesPageWidget(),
            ),
            FFRoute(
              name: 'SharesList',
              path: 'sharesList',
              builder: (context, params) => SharesListWidget(),
            ),
            FFRoute(
              name: 'SharesDetailsPage',
              path: 'sharesDetailsPage',
              builder: (context, params) => SharesDetailsPageWidget(
                id: params.getParam('id', ParamType.String),
                checkoutId: params.getParam('checkoutId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'RapydRewardsPage',
              path: 'rapydRewardsPage',
              builder: (context, params) => RapydRewardsPageWidget(),
            ),
            FFRoute(
              name: 'HomePageV3',
              path: 'homePageV3',
              builder: (context, params) => HomePageV3Widget(),
            ),
            FFRoute(
              name: 'IssueRewardsPage',
              path: 'issueRewardsPage',
              builder: (context, params) => IssueRewardsPageWidget(),
            ),
            FFRoute(
              name: 'RapydEmbedPage',
              path: 'rapydEmbedPage',
              builder: (context, params) => RapydEmbedPageWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam(
    String paramName,
    ParamType type, [
    String? collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam(param, type, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/signInPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitPulse(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
