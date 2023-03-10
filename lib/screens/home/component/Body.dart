import 'package:flutter/material.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/screens/home/component/Categories.dart';
import 'package:movie_app/screens/home/component/Genres.dart';
import 'package:movie_app/screens/home/component/MovieCard.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategaryList(),
          Genres(),
          SizedBox(height: kDefaultPadding / 2),
          MovieCard(),
        ],
      ),
    );
  }
}
