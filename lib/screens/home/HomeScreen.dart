import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/contants.dart';
import 'package:movie_app/screens/home/component/Body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
      ],
    );
  }
}
