import 'package:c111_exam_friday/widgets/best_seller_item.dart';
import 'package:c111_exam_friday/widgets/categories_list_view.dart';
import 'package:c111_exam_friday/widgets/custom_carouser_slider.dart';
import 'package:c111_exam_friday/widgets/space-between_row.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Screen1 extends StatelessWidget {
  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/Logo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Color(0xFF4838D1),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpaceBetweenRow(
                text1: 'Categories',
                text2: 'See more',
              ),
              //
              CategoriesListView(texts: texts),
              //
              SpaceBetweenRow(
                text1: 'Recommended For You',
                text2: 'See more',
              ),
              //
              CustomCarouselSlider(
                images: images,
              ),
              //

              SpaceBetweenRow(
                text1: 'Best Seller',
                text2: 'See more',
              ),
              //
              SizedBox(
                height: 144,
                width: 315,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const BestSellerItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF4838D1),
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'library'),
        ],
      ),
    );
  }

  List<String> images = [
    'assets/images/Image Placeholder 1.png',
    'assets/images/Image Placeholder 1 (1).png'
  ];
  List<String> texts = ['Art', 'Business', 'Comedy', 'Drama'];
}
