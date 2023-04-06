part of 'featurd_books_cubit.dart';

abstract class FeaturdBooksState extends Equatable {
  const FeaturdBooksState();

  @override
  List<Object> get props => [];
}

class FeaturdBooksInitial extends FeaturdBooksState {}

class FeaturdBooksLoading extends FeaturdBooksState {}

class FeaturdBooksFailure extends FeaturdBooksState {
  final String errMessage;
  const FeaturdBooksFailure(this.errMessage);
}

class FeaturdBooksSuccess extends FeaturdBooksState {
  final List<BookModel> books;
  const FeaturdBooksSuccess(this.books);
}
