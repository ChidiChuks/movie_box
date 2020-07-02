import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_box/constants.dart';

import 'categories.dart';
import 'package:movie_box/components/genre_card.dart';
import 'package:movie_box/components/genres.dart';
import 'package:movie_box/models/movie.dart';
import 'package:movie_box/screens/home/components/movie_card.dart';
import 'movie_carousel.dart';

import 'dart:math' as math;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // It enables scroll on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}

