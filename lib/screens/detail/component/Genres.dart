import 'package:flutter/material.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/home/component/Genres.dart';

class Genres extends StatelessWidget {
  const Genres({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenresCard(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
