import 'package:flutter/material.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/detail/component/Backdrop_Rating.dart';
import 'package:movie_app/screens/detail/component/Cast_crew.dart';
import 'package:movie_app/screens/detail/component/Genres.dart';
import 'package:movie_app/screens/detail/component/Info_Add.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          const SizedBox(height: kDefaultPadding / 4),
          InfoAndAdd(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(color: Color(0xFF737599)),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
