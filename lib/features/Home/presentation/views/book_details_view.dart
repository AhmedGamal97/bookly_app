import 'package:flutter/material.dart';

import 'widget/book_details_viewbody.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
