import 'package:flutter/material.dart';
import 'package:movies_app/components/card.dart';
import 'package:movies_app/components/greeting.dart';
// import 'package:movies_app/component/search.dart';
import 'package:movies_app/services/movies.dart';
import 'package:movies_app/util/format.dart';

class Movie {
  final String movieName;
  final String ratings;
  final String date;
  final String image;

  const Movie({
    required this.movieName,
    required this.ratings,
    required this.date,
    required this.image,
  });
}

List<Movie> movies = [];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    fetchMovieData();
  }

  void fetchMovieData() async {
    final result = await getMovie();

    setState(() {
      movies = result
          .map(
            (item) => Movie(
              movieName: item['original_title'],
              ratings: rate_format(item['vote_average']),
              date: date_format(item['release_date']),
              image: item['poster_path'] != null
                  ? 'https://image.tmdb.org/t/p/w500${item['poster_path']}'
                  : "https://via.placeholder.com/300x450.png?text=No+Image",
            ),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // fetchmovieData();
    // getData();
    // getMovie();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Greeting(),
        SearchBar(),
        // Search(),
        // Card(child: Text("data"),),
        // MovieCard(
        //   'Dune',
        //   '8.1',
        //   '20-oct-2009',
        //   'lib/assets/images/fhfg (2).jpg',
        // ),
        Flexible(
          child: GridView.count(
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.5,
            children: <Widget>[
              ...movies.map(
                (items) => MovieCard(
                  items.movieName,
                  items.ratings,
                  items.date,
                  items.image,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
