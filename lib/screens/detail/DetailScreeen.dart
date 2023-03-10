import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/detail/component/Body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(movie: movie));
  }
}
