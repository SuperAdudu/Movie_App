import 'package:flutter/material.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/screens/detail/component/CastCard.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({super.key, required this.casts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: kDefaultPadding / 4),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          ),
        ],
      ),
    );
  }
}
