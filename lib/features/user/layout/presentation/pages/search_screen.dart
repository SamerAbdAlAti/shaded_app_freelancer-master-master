import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: UnderlineInputBorder()),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, top: 90.0, bottom: 10.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "أحدث عمليات البحث",
                      style:
                          tajawalArabic(fontWeight: FontWeight.bold, size: 16.0),
                    ),
                    Icon(Icons.close)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  "نقل سريع",
                  style: tajawalArabic(fontWeight: FontWeight.w400, size: 14.0),
                ),
              ),
              Divider(endIndent: 40, indent: 18),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  "شاحنات ودينات",
                  style: tajawalArabic(fontWeight: FontWeight.w400, size: 14.0),
                ),
              ),
              Divider(endIndent: 40, indent: 18),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  "آخرى",
                  style: tajawalArabic(fontWeight: FontWeight.w400, size: 14.0),
                ),
              ),
              Divider(endIndent: 40, indent: 18),
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, top: 90.0, bottom: 10.0, left: 15.0),
                child: Text(
                  "أكثر الخدمات طلباً",
                  style:
                  tajawalArabic(fontWeight: FontWeight.bold, size: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, top: 10.0),
                child: Text(
                  "نقل سريع",
                  style: tajawalArabic(fontWeight: FontWeight.w600, size: 14.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, top: 10.0),
                child: Text(
                  "شاحنات ودينات",
                  style: tajawalArabic(fontWeight: FontWeight.w600, size: 14.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, top: 10.0),
                child: Text(
                  "آخرى",
                  style: tajawalArabic(fontWeight: FontWeight.w600, size: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
