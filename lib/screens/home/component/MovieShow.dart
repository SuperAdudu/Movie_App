import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/detail/DetailScreeen.dart';

class Movieshow extends StatelessWidget {
  const Movieshow({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: OpenContainer(
          closedElevation: 0,
          openElevation: 0,
          closedBuilder: (context, action) => buildMovieShow(context),
          openBuilder: (context, action) => DetailScreen(movie: movie),
        ));
  }

  Column buildMovieShow(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [kDefaultShadow],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(movie.poster),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            movie.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/star_fill.svg",
              height: 20,
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              "${movie.rating}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}
