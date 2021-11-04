import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(13.0))),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Owen Alikula',
              title: 'Jaba Smoothie',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                    bottom: 10,
                    right: 10,
                  ),
                  Positioned(
                    bottom: 60,               child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothies',
                          style: FooderlichTheme.lightTextTheme.headline1,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
