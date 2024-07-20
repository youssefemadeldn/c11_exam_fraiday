import 'package:flutter/material.dart';

class PositiveItem extends StatelessWidget {
  const PositiveItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 216, 241, 227),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Positive vibes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Boost your mood with',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'positive vibes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text('\n'),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle,
                      color: Color(0XFF32D583),
                    ),
                    Text(
                      '10 mins',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Image.asset(
              'assets/images2/green_girl.png',
              width: 102.11,
              height: 90.06,
            ),
          ],
        ),
      ),
    );
  }
}
