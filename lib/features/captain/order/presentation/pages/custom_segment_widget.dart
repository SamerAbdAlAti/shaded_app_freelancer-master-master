import 'package:flutter/cupertino.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import '../../../../../_core/theme.dart';
import '../widgets/current_order_page_widget.dart';
import '../widgets/last_order_page.dart';

enum CaptainChoices { currentOffer, lastOffer }

Map<CaptainChoices, Widget> choicesPages = <CaptainChoices, Widget>{
  CaptainChoices.currentOffer: captainCurrentOfferPage(),
  CaptainChoices.lastOffer: captainLastOfferPage(),
};

class CaptainOrderPage extends StatefulWidget {
  const CaptainOrderPage({super.key});

  @override
  State<CaptainOrderPage> createState() => _CaptainOrderPageState();
}

class _CaptainOrderPageState extends State<CaptainOrderPage> {
  CaptainChoices selectedSegment = CaptainChoices.currentOffer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                child: CupertinoNavigationBar(
                  padding: EdgeInsetsDirectional.all(2),
                  automaticallyImplyLeading: false,
                  middle: CupertinoSlidingSegmentedControl<CaptainChoices>(
                    padding: EdgeInsets.all(5),
                    thumbColor: appColor,
                    groupValue: selectedSegment,
                    onValueChanged: (CaptainChoices? value) {
                      if (value != null) {
                        setState(() {
                          selectedSegment = value;
                        });
                      }
                    },
                    children: <CaptainChoices, Widget>{
                      CaptainChoices.currentOffer: Center(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'العروض المتاحة',
                            style: tajawalArabic(
                                color: selectedSegment == CaptainChoices.currentOffer
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                      CaptainChoices.lastOffer: Center(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'العروض الأخيرة',
                            style: tajawalArabic(
                                color: selectedSegment == CaptainChoices.lastOffer
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Center(
                child: choicesPages[selectedSegment],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
