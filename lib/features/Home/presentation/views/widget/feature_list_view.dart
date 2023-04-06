import 'package:bookly_app/features/Home/presentation/manager/Featurd%20Books%20cubit/featurd_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturdBooksCubit, FeaturdBooksState>(
      builder: (context, state) {
        if (state is FeaturdBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(),
                );
              },
            ),
          );
        } else if (state is FeaturdBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
