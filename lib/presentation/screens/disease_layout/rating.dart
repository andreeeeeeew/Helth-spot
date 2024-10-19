import 'package:flutter/material.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:Health_Spot/presentation/widget/rating_bar.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 60.0, left: 15.0, right: 10.0),
              child: DefaultText(
                text: 'How Do You Feel Better In Disease Name 1 ?',
                fontSize: 25.0,
                maxLines: 2,
              ),
            ),
            SizedBox(height: 60.0),
            StarsRatingBar(),
          ],
        ),
      ),
    );
  }
}
