import 'package:flutter/material.dart';

import 'custom_bookDetails_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
