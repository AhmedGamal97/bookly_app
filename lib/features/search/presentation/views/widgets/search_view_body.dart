import 'package:flutter/material.dart';

import '../../../../../core/uitls/styles.dart';
import '../../../../Home/presentation/views/widget/best_seller_list_view_item.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          //child: BookListViewItem(bookModel: ,),
          child: Text('search result'),
        );
      },
    );
  }
}
