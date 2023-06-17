import 'package:flutter/material.dart';
import 'package:foody/generated/assets.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {

  //Page controller to manage pages
  PageController _pageController = PageController(initialPage: 0);

  //The number of the page we are on when we start
  int _currentPage = 0;

  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500), // Set the desired duration
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController?.dispose();
    super.dispose();
  }

  //for jump to desired pages with animation
  void goToPageWithAnimation(int page) {
    _animationController?.forward(from: 0.0);
    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 500), // Set the desired duration
      curve: Curves.easeOut, // Set the desired curve
    );
  }

  //for making indicator
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  //Indicator customization
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 16.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.deepOrange : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              // Page 1
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesOnboard1),
                    SizedBox(height: 32.0),
                    Text(
                      'Get Favorite Foods',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Find the best local restaurants near you and explore their menus.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.black26),
                    ),
                  ],
                ),
              ),

              // Page 2
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesOnboard2),
                    SizedBox(height: 32.0),
                    Text(
                      'Easy Payment',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Browse the menus, select your favorite dishes, and place your order.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.black26),
                    ),
                  ],
                ),
              ),

              // Page 3
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesOnboard3),
                    SizedBox(height: 32.0),
                    Text(
                      'Fast Delivery',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Sit back and relax while your food gets delivered to your doorstep.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.black26),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Page indicator
          Padding(
            padding: const EdgeInsets.only(bottom: 92.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),

          // Next button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _currentPage == 2
                  ? ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(width, 50),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              goToPageWithAnimation(2);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: Size(width / 2.3, 50),
                            ),
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w500),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width / 2.3, 50),
                            ),
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}