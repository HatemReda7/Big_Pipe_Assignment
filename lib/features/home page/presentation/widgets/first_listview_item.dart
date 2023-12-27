import 'package:flutter/material.dart';
import 'package:movies_app/core/api/models/movie_item.dart';

// ignore: must_be_immutable
class NewReleasesListViewItem extends StatelessWidget {
  Results movie;

  NewReleasesListViewItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96.87,
      height: 127.74,
      child: Image.network("https://image.tmdb.org/t/p/w500/${movie.posterPath}"),
    );
  }
}
