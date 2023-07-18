import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/features/captain/account_details/presentation/pages/my_profile_screen.dart';

import '../widgets/rating_card_widget.dart';

class CaptainRatingPage extends StatefulWidget {
  const CaptainRatingPage({super.key});

  @override
  State<CaptainRatingPage> createState() => _CaptainRatingPageState();
}

class _CaptainRatingPageState extends State<CaptainRatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 80,
        centerTitle: false,
        leading: IconButton(
            onPressed: () => Navigator.pop(context, CaptainMyProfilePage()),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            )),
        title: Text("التقييمات",
            style: tajawalArabic(
                size: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              createCaptainRatingCard(),
              createCaptainRatingCard(),
              createCaptainRatingCard(),
              createCaptainRatingCard(),
            ],
          )
        ),
      ),
    );
  }
}
