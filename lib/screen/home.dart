import 'package:flutter/material.dart';
import 'package:movies_app/components/card.dart';
import 'package:movies_app/components/greeting.dart';
// import 'package:movies_app/component/search.dart';

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

void getData() async{
 await Future.delayed(Duration(seconds: 3), (){
    print('Dracarays');
  });

   Future.delayed(Duration(seconds: 2), (){
    print('Dragon blood');
  });

  print('witcher');
}

const List<Movie> movies = [
  Movie(
    movieName: 'Dune',
    ratings: '3.9',
    date: '20-Oct-2009',
    image: 'https://m.media-amazon.com/images/I/81f0v6SxfBL._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'Inception',
    ratings: '4.7',
    date: '16-Jul-2010',
    image: 'https://m.media-amazon.com/images/I/51s+MTAKp5L._AC_.jpg',
  ),
  Movie(
    movieName: 'Interstellar',
    ratings: '4.6',
    date: '07-Nov-2014',
    image: 'https://m.media-amazon.com/images/I/71npld+uN6L._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'The Dark Knight',
    ratings: '4.8',
    date: '18-Jul-2008',
    image: 'https://m.media-amazon.com/images/I/51EbJjlV7CL._AC_.jpg',
  ),
  Movie(
    movieName: 'Avatar',
    ratings: '4.2',
    date: '18-Dec-2009',
    image: 'https://m.media-amazon.com/images/I/61OjP4R98BL._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'The Matrix',
    ratings: '4.5',
    date: '31-Mar-1999',
    image: 'https://m.media-amazon.com/images/I/51vpnbwFHrL._AC_.jpg',
  ),
  Movie(
    movieName: 'Guardians of the Galaxy',
    ratings: '4.1',
    date: '01-Aug-2014',
    image: 'https://m.media-amazon.com/images/I/81Y8RzA5gPL._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'Avengers: Endgame',
    ratings: '4.9',
    date: '26-Apr-2019',
    image: 'https://m.media-amazon.com/images/I/81ExhpBEbHL._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'Joker',
    ratings: '4.3',
    date: '04-Oct-2019',
    image: 'https://m.media-amazon.com/images/I/71q2Lf7e0kL._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'Tenet',
    ratings: '3.8',
    date: '03-Sep-2020',
    image: 'https://m.media-amazon.com/images/I/71E8Oa6bSJL._AC_SY679_.jpg',
  ),
  Movie(
    movieName: 'Black Panther',
    ratings: '4.4',
    date: '16-Feb-2018',
    image: 'https://m.media-amazon.com/images/',
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    getData();
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
            childAspectRatio: 0.55,
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
