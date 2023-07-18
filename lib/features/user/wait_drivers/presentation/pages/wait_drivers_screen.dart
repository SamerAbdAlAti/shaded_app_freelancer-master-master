import 'package:flutter/material.dart';

import '../../../../../_core/widgets/custom_appbar.dart';

class WaitDriverScreen extends StatelessWidget {
  const WaitDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, "انتظار السائق المناسب", height: 60.0),
    );
  }
}
