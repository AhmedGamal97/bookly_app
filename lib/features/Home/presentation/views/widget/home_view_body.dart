import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(), CustomListViewItem()],
    );
  }
}
