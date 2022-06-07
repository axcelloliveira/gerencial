import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomFilterSentLoading extends StatelessWidget {
  const CustomFilterSentLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Card(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child:
                SizedBox(height: MediaQuery.of(context).size.height / 40.0),
              ),
            ),
          );
        },
      ),

    );
  }
}
