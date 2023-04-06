import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturdBooksState> {
  FeaturdBooksCubit(this.homeRepo) : super(FeaturdBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturdBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturdBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturdBooksSuccess(books));
    });
  }
}
