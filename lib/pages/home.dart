import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _random = math.Random();

  int _selectedNavigationIndex = 0;

  List<String> categories = [
    'Vegetables',
    'Fruits',
    'Meats',
    'Dairy',
    'Grain',
    'Seedlings',
    'Eggs',
    'Hay',
    'Seeds',
    'Fertilizer',
    'Feeds',
    'Pesticides',
    'Insecticides',
    'Machinery',
  ];

  List categoryColors = [
    Color(0xff6db812),
    Color(0xffdba700),
    Color(0xffab5d6a),
    Color(0xff5a4dd0),
    Color(0xffff7c55),
  ];

  int _specials_scroll_index = 1;
  int _current_special = 0;
  int _current_popular_deal = 0;

  final CarouselController _controller = CarouselController();

  final List<String> specials = [
    'special 1',
    'special 2',
    'special 3',
  ];

  final List<String> popular_deals = [
    'Cabbage',
    'Maize',
    'Kidney Beans',
    'Green Peas'
  ];

  void _onNavigationItemTap(int index) {
    setState(() {
      _selectedNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Color(0xff4f4f4f),
                      size: 24,
                    ),
                    Image.asset('assets/images/nav-logo.png', fit: BoxFit.cover),
                    Icon(
                      Icons.search,
                      color: Color(0xff4f4f4f),
                      size: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xff1f2933),
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250.0,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                          filled: true,
                          fillColor: Color(0xffefeff0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xffefeff0),
                              width: 0,
                            ),
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xffaeaeb2),
                            fontFamily: "Poppins",
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x28ffa34f),
                            blurRadius: 10,
                            offset: Offset(0, 18),
                          ),
                        ],
                        color: Color(0xfffc865a),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: (1 / .3),
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10,
                      ),
                      children: categories.map((category) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.3),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                          child: Center(
                            child: Text(
                                category,
                                style: TextStyle(
                                    color: CategoryColors.colors[_random.nextInt(5)],
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                ),
                              ),
                          ),
                          );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Specials For You",
                  style: TextStyle(
                    color: Color(0xff1f2933),
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              SizedBox(
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: specials.map((special) => Container(
                          child: Card(
                            color: Color(0xffe5e5ea),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              width: 300.0,
                              height: 220.0,
                            ),
                          ),
                        )
                        ).toList(),
                        carouselController: _controller,
                        options: CarouselOptions(
                            enableInfiniteScroll: false,
                            aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current_special = index;
                              });
                            }),
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: specials.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Color(0xfffc865a))
                                    .withOpacity(_current_special == entry.key ? 0.9 : 0.3)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Deals",
                      style: TextStyle(
                        color: Color(0xff1f2933),
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff4f4f4f),
                      size: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              SizedBox(
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          enlargeCenterPage: false,
                          viewportFraction: 1.5,
                          enableInfiniteScroll: false,
                        ),
                        itemCount: (popular_deals.length / 2).round(),
                        itemBuilder: (context, index, realIdx) {
                          final int first = index * 2;
                          final int second = first + 1;
                          return Row(
                            children: popular_deals.map((idx) {
                              return Expanded(
                                flex: 1,
                                child: Container(
                                  width: 150,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xffedecff), width: 1, ),
                                    color: Colors.white,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 113,
                                        child: Text(
                                          idx,
                                          style: TextStyle(
                                            color: Color(0xff1f2933),
                                            fontSize: 14,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8,
                                        top: 157,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Ksh 950",
                                              style: TextStyle(
                                                color: Color(0xff17c690),
                                                fontSize: 22,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              "/kilo",
                                              style: TextStyle(
                                                color: Color(0xff8a8a8e),
                                                fontSize: 12,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 8,
                                        top: 133,
                                        child: Text(
                                          "John Kamau",
                                          style: TextStyle(
                                            color: Color(0xff8a8a8e),
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 150,
                                            height: 105,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                                              color: Color(0xffe5e5ea),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(8), bottomLeft: Radius.circular(8), bottomRight: Radius.circular(0), ),
                                              color: Color(0xfffc865a),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add_shopping_cart_outlined,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        },

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: specials.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Color(0xfffc865a))
                                    .withOpacity(_current_popular_deal == entry.key ? 0.9 : 0.3)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavigationIndex,
        onTap: _onNavigationItemTap,
        selectedItemColor: Color(0xff17c690),
        unselectedItemColor: Color(0xffaeaeb2),
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CategoryColors {
  static final List colors = [
    Color(0xff6db812),
    Color(0xffdba700),
    Color(0xffab5d6a),
    Color(0xff5a4dd0),
    Color(0xffff7c55),
  ];
}
