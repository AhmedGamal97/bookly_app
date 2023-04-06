import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturdBooksState> {
  FeaturdBooksCubit() : super(FeaturdBooksInitial());
}
