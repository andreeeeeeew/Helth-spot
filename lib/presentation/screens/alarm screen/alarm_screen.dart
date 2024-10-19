import 'package:flutter/material.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({
    Key? key,
    required this.payload,
  }) : super(key: key);
  final String payload;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 5,
            ),
            const DefaultText(
              text: 'Take Panadol',
              color: Colors.black,
              fontSize: 40.0,
            ),
            const Spacer(
              flex: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DefaultButton(
                  onPressed: () {},
                  textWidget: const DefaultText(text: 'Snooze'),
                  width: 40.0,
                  elevation: 2,
                  fontSize: 15.0,
                ),
                DefaultButton(
                  onPressed: () {},
                  textWidget: const DefaultText(text: 'Stop'),
                  width: 40.0,
                  elevation: 2,
                  fontSize: 15.0,
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
