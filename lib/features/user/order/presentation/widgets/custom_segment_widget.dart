import 'package:flutter/cupertino.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import '../../../../../_core/theme.dart';
import '../pages/canceled_order_page.dart';
import '../pages/complete_order_page.dart';
import '../pages/next_order_page_widget.dart';

enum Choices { nextOffer, canceledOffer, CompletedOffer }

Map<Choices, Widget> choicesPages = <Choices, Widget>{
  Choices.nextOffer: userNextOfferPage(),
  Choices.canceledOffer: userCanceledOfferPage(),
  Choices.CompletedOffer: userCompletedOfferPage(),
};

class CreateOrderPage extends StatefulWidget {
  const CreateOrderPage({super.key});

  @override
  State<CreateOrderPage> createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> {
  Choices selectedSegment = Choices.nextOffer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                child: CupertinoNavigationBar(
                  padding: EdgeInsetsDirectional.all(2),
                  automaticallyImplyLeading: false,
                  middle: CupertinoSlidingSegmentedControl<Choices>(
                    padding: EdgeInsets.all(5),
                    thumbColor: appColor,
                    groupValue: selectedSegment,
                    onValueChanged: (Choices? value) {
                      if (value != null) {
                        setState(() {
                          selectedSegment = value;
                        });
                      }
                    },
                    children: <Choices, Widget>{
                      Choices.nextOffer: Center(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'القادمة',
                            style: tajawalArabic(
                                color: selectedSegment == Choices.nextOffer
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                      Choices.canceledOffer: Center(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'الملغية',
                            style: tajawalArabic(
                                color: selectedSegment == Choices.canceledOffer
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                      Choices.CompletedOffer: Center(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'المكتملة',
                            style: tajawalArabic(
                                color: selectedSegment == Choices.CompletedOffer
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
