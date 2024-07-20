import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.texts,
  });

  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: texts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 217, 220),
                borderRadius: BorderRadius.circular(15),
              ),
              // shape: ShapeBorder.,
              child: Center(child: Text(texts[index])),
            ),
          );
        },
      ),
    );
  }
}
