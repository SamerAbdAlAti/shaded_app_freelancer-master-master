import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shaded_app_freelancer/_core/bloc_observer.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/features/authentication/presentation/bloc/login/login_cubit.dart';
import 'package:shaded_app_freelancer/features/screens/onBoarding/on_boarding_screen.dart';
import 'package:shaded_app_freelancer/features/user/layout/presentation/bloc-cubit/layout/layout_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/image/gallery_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/quick_cubit/quick_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/track_cubit/track_cubit.dart';

import 'features/captain/layout/presentation/bloc-cubit/layout/layout_cubit.dart';
import 'features/screens/onBoarding/on_boarding_cubit.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/tajawal.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 3));
  FlutterNativeSplash.remove();
  Bloc.observer = MyBlocObserver();
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);

    var swAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
    var swInterceptAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

    if (swAvailable && swInterceptAvailable) {
      AndroidServiceWorkerController serviceWorkerController =
      AndroidServiceWorkerController.instance();

      await serviceWorkerController
          .setServiceWorkerClient(AndroidServiceWorkerClient(
        shouldInterceptRequest: (request) async {
          print(request);
          return null;
        },
      ));
    }
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // // Bloc Provider for select language
        // BlocProvider<SelectLanguageCubit>(
        //   create: (BuildContext context) => SelectLanguageCubit(),
        // ),

        // Bloc Provider for on boarding
        BlocProvider<OnBoardingCubit>(
          create: (BuildContext context) => OnBoardingCubit(),
        ),

        // Bloc Provider for login
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(),
        ),
        // Bloc Provider for user bloc's
        BlocProvider<UserLayoutCubit>(
          create: (BuildContext context) => UserLayoutCubit(),
        ),

        // Bloc Provider for captain bloc's
        BlocProvider<CaptainLayoutCubit>(
          create: (BuildContext context) => CaptainLayoutCubit(),
        ),

        //   Bloc Provider for user bloc's
        BlocProvider<UserLayoutCubit>(
          create: (context) => UserLayoutCubit(),
        ),
        BlocProvider<QuickCubit>(
          create: (context) => QuickCubit(),
        ),
        BlocProvider<TrackCubit>(
          create: (context) => TrackCubit(),
        ),
        BlocProvider<GalleryCubit>(create: (context) => GalleryCubit(),)
      ],
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: Locale("ar"),
        title: 'Shadeed app',
        theme: themeData,
        debugShowCheckedModeBanner: false,
        // routes: routes,
        home: OnBoardingScreen(),
      ),
    );
  }
}
