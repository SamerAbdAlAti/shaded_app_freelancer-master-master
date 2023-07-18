// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello! 👋`
  String get hello {
    return Intl.message(
      'Hello! 👋',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Welcome For you 👋`
  String get welcome_from_you {
    return Intl.message(
      'Welcome For you 👋',
      name: 'welcome_from_you',
      desc: '',
      args: [],
    );
  }

  /// `Welcome! 👋`
  String get welcome {
    return Intl.message(
      'Welcome! 👋',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Select app language`
  String get select_language_app {
    return Intl.message(
      'Select app language',
      name: 'select_language_app',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `You can change app language from settings`
  String get change_language_from_settings {
    return Intl.message(
      'You can change app language from settings',
      name: 'change_language_from_settings',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Order what you want and select the delivery time that suits you, and we will take care of the hassle of buying and delivering.`
  String get on_boarding_1 {
    return Intl.message(
      'Order what you want and select the delivery time that suits you, and we will take care of the hassle of buying and delivering.',
      name: 'on_boarding_1',
      desc: '',
      args: [],
    );
  }

  /// `Send your order to any place and your order in safe hands, while ensuring that it reaches the end of the track without damage or damage`
  String get on_boarding_2 {
    return Intl.message(
      'Send your order to any place and your order in safe hands, while ensuring that it reaches the end of the track without damage or damage',
      name: 'on_boarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Do you own a vehicle? Join our family today as a savior to deliver our customers' orders in your free time.`
  String get on_boarding_3 {
    return Intl.message(
      'Do you own a vehicle? Join our family today as a savior to deliver our customers\' orders in your free time.',
      name: 'on_boarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get create_account {
    return Intl.message(
      'Login',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number to verify`
  String get enter_phone_number {
    return Intl.message(
      'Enter your phone number to verify',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Or signup via`
  String get or {
    return Intl.message(
      'Or signup via',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Captain`
  String get captain {
    return Intl.message(
      'Captain',
      name: 'captain',
      desc: '',
      args: [],
    );
  }

  /// `Send code verification`
  String get send_verify {
    return Intl.message(
      'Send code verification',
      name: 'send_verify',
      desc: '',
      args: [],
    );
  }

  /// `Code verification`
  String get code_verify {
    return Intl.message(
      'Code verification',
      name: 'code_verify',
      desc: '',
      args: [],
    );
  }

  /// `Enter code verification to this phone number`
  String get send_code_to {
    return Intl.message(
      'Enter code verification to this phone number',
      name: 'send_code_to',
      desc: '',
      args: [],
    );
  }

  /// `I didn't request the code ?`
  String get didnt_send {
    return Intl.message(
      'I didn\'t request the code ?',
      name: 'didnt_send',
      desc: '',
      args: [],
    );
  }

  /// `Re-send the code`
  String get send_again {
    return Intl.message(
      'Re-send the code',
      name: 'send_again',
      desc: '',
      args: [],
    );
  }

  /// `verify`
  String get verify {
    return Intl.message(
      'verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `loading`
  String get is_verify {
    return Intl.message(
      'loading',
      name: 'is_verify',
      desc: '',
      args: [],
    );
  }

  /// `Select the location`
  String get select_location {
    return Intl.message(
      'Select the location',
      name: 'select_location',
      desc: '',
      args: [],
    );
  }

  /// `Please, Select a location to allow the app to access your location`
  String get desc_location_page {
    return Intl.message(
      'Please, Select a location to allow the app to access your location',
      name: 'desc_location_page',
      desc: '',
      args: [],
    );
  }

  /// `Welcome !\nThe delivery become more easy ....`
  String get the_delivery_be_more_easy {
    return Intl.message(
      'Welcome !\nThe delivery become more easy ....',
      name: 'the_delivery_be_more_easy',
      desc: '',
      args: [],
    );
  }

  /// `Search on your order...`
  String get search_on_your_order {
    return Intl.message(
      'Search on your order...',
      name: 'search_on_your_order',
      desc: '',
      args: [],
    );
  }

  /// `Our services`
  String get our_options {
    return Intl.message(
      'Our services',
      name: 'our_options',
      desc: '',
      args: [],
    );
  }

  /// `Quick Order`
  String get quick {
    return Intl.message(
      'Quick Order',
      name: 'quick',
      desc: '',
      args: [],
    );
  }

  /// `Trucks & Cars`
  String get tracking {
    return Intl.message(
      'Trucks & Cars',
      name: 'tracking',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get other {
    return Intl.message(
      'Others',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `My account`
  String get my_account {
    return Intl.message(
      'My account',
      name: 'my_account',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Pick up`
  String get pick_up {
    return Intl.message(
      'Pick up',
      name: 'pick_up',
      desc: '',
      args: [],
    );
  }

  /// `List all the things you want to move / Are there any other important details you would like to add?`
  String get long_form_field {
    return Intl.message(
      'List all the things you want to move / Are there any other important details you would like to add?',
      name: 'long_form_field',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
