import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarsRatingBar extends StatefulWidget {
  const StarsRatingBar({Key? key}) : super(key: key);

  @override
  State<StarsRatingBar> createState() => _StarsRatingBarState();
}

class _StarsRatingBarState extends State<StarsRatingBar> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      minRating: 1,
      itemPadding: EdgeInsets.symmetric(horizontal: 15.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.black,
      ),
      onRatingUpdate: (rating) => setState(() {
        this.rating = rating;
      }),
    );
  }
}
