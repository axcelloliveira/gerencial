import 'package:flutter/material.dart';
import 'details_loading.dart';

class TabsLoading extends StatelessWidget {
  const TabsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        DetailsLoading(itemCount: 8),
        DetailsLoading(itemCount: 6),
        DetailsLoading(itemCount: 3),
        DetailsLoading(itemCount: 7),
      ],
    );
  }
}
