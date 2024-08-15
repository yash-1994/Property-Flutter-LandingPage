import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_first_sample/constants.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _isSearchHoverd = false,
      _isTryHoverd = false,
      _isSearchBarHoverd = false;

  String selectedLocation = "";
  List<String> location = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  Color primaryColor = Color.fromRGBO(25, 70, 104, 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 80),
            width: double.maxFinite,
            child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/home_banner.jpg')),
          ),
          Container(
            width: 600,
            color: Colors.amber.withOpacity(0.0),
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Finding Your New Home is Simple',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                Text(
                  'property home" in the context of real estate typically refers to a residential dwelling, which can be an apartment, house, condominium, or any other type of housing structure. The description may include information about the physical attributes, location, features, and amenities of the property.',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      _isSearchHoverd = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      _isSearchHoverd = false;
                    });
                  },
                  child: IntrinsicWidth(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: _isSearchHoverd ? 250 : 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: _isSearchHoverd
                            ? Color.fromARGB(255, 178, 172, 199)
                                .withOpacity(0.3)
                            : Color.fromARGB(255, 142, 135, 167)
                                .withOpacity(0.3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Search ',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: IntrinsicHeight(
              child: Container(
                height: 80,
                padding:
                    EdgeInsets.only(left: 40, right: 10, top: 10, bottom: 10),
                margin: EdgeInsets.symmetric(horizontal: 300, vertical: 50),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Shadow color
                      offset: Offset(0, 4), // Offset of the shadow
                      blurRadius: 4, // Spread of the shadow
                      spreadRadius: 0, // Spread radius
                    ),
                  ],
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('City Street',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15)),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        SizedBox(height: 8),
                        Text('Junagadh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: PrimamryColor,
                                fontSize: 18))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Tipology Of rent',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15)),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        SizedBox(height: 8),
                        Text('Villa',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: PrimamryColor,
                                fontSize: 18))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Price',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15)),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        SizedBox(height: 8),
                        Text('& 950,000.00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: PrimamryColor,
                                fontSize: 18))
                      ],
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          _isSearchBarHoverd = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          _isSearchBarHoverd = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              if (_isSearchBarHoverd)
                                BoxShadow(
                                  color: PrimamryColor,
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100)),
                            color: primaryColor),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(left: 60, right: 60, top: 20),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35,
                    child: Image(
                        image: AssetImage('assets/images/company_logo.png')),
                  ),
                  SizedBox(
                    width: 600,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavOption(text: 'Home'),
                        NavOption(text: 'Contact'),
                        NavOption(text: 'Support'),
                        NavOption(text: 'Location'),
                        NavOption(text: 'About us')
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:
                          Color.fromARGB(255, 178, 172, 199).withOpacity(0.3),
                    ),
                    child: Text(
                      'Try Now',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavOption extends StatefulWidget {
  final String text;
  const NavOption({super.key, required this.text});

  @override
  State<NavOption> createState() => _NavOptionState();
}

class _NavOptionState extends State<NavOption> {
  bool _isHoverd = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHoverd = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHoverd = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _isHoverd ? Colors.white : Colors.transparent,
        ),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 200),
          style: TextStyle(
              color: _isHoverd ? PrimamryColor : Colors.white, fontSize: 18),
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}
