import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 69,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? const Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 35,
            ),
            child: Column(
              children: [
                // NOTE: Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      height: 40,
                      width: 72,
                    ),
                    Row(
                      children: [
                        navItem(
                          title: 'Guides',
                          index: 0,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Pricing',
                          index: 1,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Team',
                          index: 2,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Stories',
                          index: 3,
                        ),
                      ],
                    ),
                    Image.asset(
                      'btn_account.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),
                // NOTE: Content
                const SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'ilustration.png',
                  width: 550,
                ),

                // Note: Footer
                const SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_scroll.png',
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    const Text(
                      'Scroll to Learn More',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
