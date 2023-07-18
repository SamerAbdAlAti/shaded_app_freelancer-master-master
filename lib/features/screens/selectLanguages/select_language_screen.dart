import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/features/screens/onBoarding/on_boarding_screen.dart';
import 'package:shaded_app_freelancer/features/screens/onBoarding/on_boarding_screen.dart';
import 'package:shaded_app_freelancer/features/screens/selectLanguages/select_language_cubit.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectLanguageCubit(),
      child: BlocBuilder<SelectLanguageCubit, Language>(
        builder: (context, state) {
          var cubit = SelectLanguageCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 6,
                        child: SvgPicture.asset(
                            'assets/images/select-language.svg')),
                    Expanded(
                        flex: 8,
                        child: Column(
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Text(
                                  "اختر لغة التطبيق",
                                  locale: arabicLocale,
                                  style: tajawalArabic(
                                      size: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            SizedBox(height: 16.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: RadioListTile<Language>(
                                title: Text(
                                  "الانجليزية",
                                  style: tajawalArabic(size: 18),
                                  locale: arabicLocale,
                                ),
                                value: Language.English,
                                groupValue: state,
                                selectedTileColor: Colors.grey[500],
                                fillColor: MaterialStatePropertyAll(appColor),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Colors.black87, width: 1)),
                                onChanged: (value) => {
                                  // cubit.onLanguageChanged(value!).then(
                                  //   (value) => navAndFinish(context, Widget)(context,
                                  //       "/on_boarding_screen.dart.dart"),
                                  // )
                                  navAndFinish(
                                      context, OnBoardingScreen())
                                },
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: RadioListTile<Language>(
                                title: Text(
                                  "العربية",
                                  style: tajawalArabic(size: 18),
                                  locale: arabicLocale,
                                ),
                                value: Language.Arabic,
                                groupValue: state,
                                selected: true,
                                fillColor: MaterialStatePropertyAll(appColor),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Colors.black87, width: 1)),
                                onChanged: (value) {
                                  // cubit.onLanguageChanged(value!).then(
                                  //   (value) => navRouteAndFinish(context,
                                  //       "/on_boarding_screen.dart.dart"),
                                  // );
                                  navAndFinish(
                                      context, OnBoardingScreen());
                                },
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 4,
                        child: Text(
                          textAlign: TextAlign.center,
                          "يمكنك تغيير اللغة في اي وقت \nمن الإعدادات",
                          locale: Locale("ar"),
                          style: tajawalArabic(
                              fontWeight: FontWeight.w400, size: 18),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
