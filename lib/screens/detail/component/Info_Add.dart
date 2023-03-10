import 'package:flutter/material.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/model/movie.dart';

class InfoAndAdd extends StatelessWidget {
  const InfoAndAdd({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: const TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    const Text(
                      "PG - 13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    const Text(
                      "2h 30min",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
