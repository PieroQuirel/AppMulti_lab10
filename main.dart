import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Movie {
  final String name;
  final String genre;
  final String age;
  final String imageUrl; 

  Movie({required this.name, required this.genre, required this.age, required this.imageUrl});
}

class MovieList extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
        name: 'Up',
        genre: 'Aventura/Animado',
        age: '2009',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWufmGpJ3wxKxbHl7QeIOb0wv1bEoUx6xqVefY6z4hrw&s'),
    Movie(
        name: 'Spider-Man 2',
        genre: 'Acción',
        age: '2004',
        imageUrl: 'https://images-3.rakuten.tv/storage/global-movie/translation/artwork/9e047be4-b8c8-4a76-95c2-c5a8a8f8d06f-spider-man-2-1635150192.jpeg'),
    Movie(
        name: 'Jumanji',
        genre: 'Aventura/Fantasía',
        age: '1995',
        imageUrl: 'https://m.media-amazon.com/images/I/716YajfZUiL._AC_UF894,1000_QL80_DpWeblab_.jpg'),
    Movie(
        name: '¡Asu mare!',
        genre: 'Comedia',
        age: '2013',
        imageUrl: 'https://m.media-amazon.com/images/M/MV5BOGE1OWUyNmQtZjAxOS00MDk2LWJlNzYtMGE3YzkxNmUxM2QyXkEyXkFqcGdeQXVyODc5Mjc4Nzg@._V1_.jpg'),
    Movie(
        name: 'Joker',
        genre: 'Suspenso/Crime',
        age: '2019',
        imageUrl: 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'),



  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieCard(movie: movies[index]);
      },
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(movie.imageUrl),
        title: Text(movie.name),
        subtitle: Text('${movie.genre} - ${movie.age}'),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Películas'),
        ),
        body: MovieList(),
      ),
    );
  }
}