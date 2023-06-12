import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie fromMovieDb(MovieMovieDB json) {
    return Movie(
      id: json.id,
      title: json.title,
      overview: json.overview,
      posterPath: json.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500${json.posterPath}'
          : 'https://sd.keepcalms.com/i/keep-calm-poster-not-found.png',
      backdropPath: json.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500${json.backdropPath}'
          : 'https://sd.keepcalms.com/i/keep-calm-poster-not-found.png',
      releaseDate: json.releaseDate,
      voteAverage: json.voteAverage,
      voteCount: json.voteCount,
      popularity: json.popularity,
      originalLanguage: json.originalLanguage,
      originalTitle: json.originalTitle,
      video: json.video,
      adult: json.adult,
      genreIds: json.genreIds.map((e) => e.toString()).toList(),
    );
  }
}
