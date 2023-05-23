import 'package:flutter/material.dart';
import 'package:jose_ortega_portfolio/models/recommendation.dart';
import 'package:jose_ortega_portfolio/screens/home/components/recomendation_cards.dart';
import 'package:jose_ortega_portfolio/utils/constants.dart';


class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
