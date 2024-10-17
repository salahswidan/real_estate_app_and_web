import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key, required this.recommendation});
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            recommendation.text!,
            style: TextStyle(height: 1.5),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
