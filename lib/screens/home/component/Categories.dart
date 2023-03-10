import 'package:flutter/material.dart';
import 'package:movie_app/contants.dart';

class CategaryList extends StatefulWidget {
  const CategaryList({super.key});

  @override
  State<CategaryList> createState() => _CategaryListState();
}

class _CategaryListState extends State<CategaryList> {
  int selectedCategary = 0;
  List<String> categaries = ["In Theater", "Box Office", "Coming Soon"];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: size.height * 0.09,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categaries.length,
        itemBuilder: (context, index) => BuildCategary(index, context),
      ),
    );
  }

  Padding BuildCategary(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategary = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categaries[index],
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: index == selectedCategary
                        ? kTextColor
                        : Colors.black.withOpacity(0.42),
                  ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedCategary
                    ? kSecondaryColor
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
