import 'package:equatable/equatable.dart';
import 'package:movie_app/model/movie/index.dart';

abstract class MovieState extends Equatable {
  const MovieState();
}

class MovieInitial extends MovieState {
  const MovieInitial();
  @override
  List<Object?> get props => [];
}

class MovieLoading extends MovieState {
  const MovieLoading();
  @override
  List<Object?> get props => [];
}

class MovieSuccess extends MovieState {
  final List<MovieModel> data;
  MovieSuccess(this.data);

  @override
  List<Object?> get props => this.data;
}

class MovieFailure extends MovieState {
  final String message;
  MovieFailure(this.message);

  @override
  List<Object?> get props => [message];
}
