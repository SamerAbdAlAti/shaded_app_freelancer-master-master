import 'package:flutter/cupertino.dart';
import '../widgets/custom_segment_widget.dart';

class UserOrderPage extends StatelessWidget {
  const UserOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CreateOrderPage(),
      ),
    );
  }
}
