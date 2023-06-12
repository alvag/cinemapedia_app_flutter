import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDataSource {
  Future<List<Movie>> getMovies();

  Future<List<Movie>> getNowPlaying({int page = 1});
}