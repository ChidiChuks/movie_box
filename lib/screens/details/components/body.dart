import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_box/components/genre_card.dart';
import 'package:movie_box/constants.dart';
import 'package:movie_box/models/movie.dart';
import 'package:movie_box/screens/details/components/title_duration_and_fav_btn.dart';

import 'backdrop_rating.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),
        SizedBox(height: kDefaultPadding / 2),
        TitleDurationAndFavBtn(movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: SizedBox(
            height: 36,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.genra.length,
              itemBuilder: (context, index) => GenreCard(
                genre: movie.genra[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

