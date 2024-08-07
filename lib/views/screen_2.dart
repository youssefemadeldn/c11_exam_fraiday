import 'package:c111_exam_friday/widgets/exercise_item.dart';
import 'package:c111_exam_friday/widgets/positive_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images2/logo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              smallSize: 10,
              alignment:
                  Alignment.lerp(Alignment.center, Alignment.topRight, .7),
              child: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' Sara Rose',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'How are you feeling today ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: circularImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor:
                            const Color.fromARGB(255, 176, 174, 174),
                        child: Image.asset(
                          circularImages[index],
                          height: 40,
                          width: 40,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feather',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF027A48),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: .9,
                  height: 190.0,
                  // aspectRatio: .9,

                  autoPlay: true,
                ),
                items: const [
                  PositiveItem(),
                  PositiveItem(),
                  PositiveItem(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 4, top: 8),
                child: AnimatedSmoothIndicator(
                  activeIndex: 1,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    dotColor: Colors.grey,
                    dotWidth: 5,
                    dotHeight: 5,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF027A48),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ExerciseItem(
                        color: Colors.purple.withOpacity(.2),
                        image: 'assets/images2/relaxing.png',
                        text: 'Relaxation',
                      ),
                      ExerciseItem(
                        color: Colors.pink.withOpacity(.2),
                        image: 'assets/images2/meditation.png',
                        text: 'Meditation',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ExerciseItem(
                        color: Colors.orange.withOpacity(.2),
                        image: 'assets/images2/Beathing.png',
                        text: 'Beathing',
                      ),
                      ExerciseItem(
                        color: Colors.blue.withOpacity(.2),
                        image: 'assets/images2/yoga.png',
                        text: 'Yoga',
                      ),
                    ],
                  ),
                ],
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
                color: Color(0xFF027A48),
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'library'),
        ],
      ),
    );
  }

  List<String> circularImages = [
    'assets/images2/love.png',
    'assets/images2/cool.png',
    'assets/images2/happy.png',
    'assets/images2/sad.png',
  ];
  List<String> texts = ['Art', 'Business', 'Comedy', 'Drama'];
}
