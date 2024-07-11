import 'package:flutter/material.dart';

import '../../../common/widgets/progressIndicator/rating_indicator.dart';
class ProductOverallRatings extends StatelessWidget {
  const ProductOverallRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 3, child: Text("14.8", style: Theme.of(context).textTheme.headlineLarge)),
      const Expanded(
        flex: 7,
        child: Column(
          children: [
            AppRatingIndicator(text: '5',value: 0.8),
            AppRatingIndicator(text: '4',value: 0.6),
            AppRatingIndicator(text: '3',value: 0.5),
            AppRatingIndicator(text: '2',value: 0.4),
            AppRatingIndicator(text: '1',value: 0.2),
          ],
        ),
      )
    ]);
  }
}