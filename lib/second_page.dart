import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:dots_indicator/dots_indicator.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            child: Divider(
              color: Colors.grey,
              height: 1.0,
            ),
          ),
          Text(
            'Most Viewed',
            style: TextStyle(
                fontSize: 50,
                color: PrimamryColor,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'property" refers to a piece of real estate, which is land and any structures or improvements on it.\n Properties can take various forms, including residential homes, apartments',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          AutoSlidePageSlider(
              pageController: PageController(viewportFraction: 0.30)),
          SizedBox(
            height: 80,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 214, 202, 202),
                              offset: Offset(10, 10))
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/home_page_house.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: Container(
                  height: 400,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Easiest Method \nTo Find a House',
                        style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: PrimamryColor),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Officia in Lorem amet dolore. Laborum esse proident amet enim enim adipisicing esse aute. Officia eu nostrud eiusmod exercitation. Qui ut ea excepteur est. Consequat veniam id Officia in Lorem amet dolore. Laborum esse proident amet enim enim adipisicing esse aute. Officia eu nostrud eiusmod exercitation. Qui ut ea excepteur est. Consequat veniam id nulla dolore laboris do. Fugiat sint non sit et ipsum aliqua.',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Officia in Lorem amet dolore. Laborum esse proident amet enim e dolore. Laborum esse proident amet enim enim adipis\do. Fugiat sint non sit et ipsum aliqua.',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )
                        ],
                      ),
                      PrimamryButton(text: 'Try Now'),
                    ],
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            child: Divider(
              color: Colors.grey,
              height: 1.0,
            ),
          ),
          Step3Section(),
          SizedBox(
            width: 100,
          ),
          AgestSection(),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            child: Divider(
              color: Colors.grey,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          DetailedSection(),
          Container(
            color: Colors.black.withOpacity(0.9),
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            child: Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Copyright C2023 |  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Yash Fadadu | ',
                    style: TextStyle(
                        color: PrimamryColor,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'BLINK',
                    style: TextStyle(
                        color: PrimamryColor,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.maxFinite,
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class DetailedSection extends StatefulWidget {
  const DetailedSection({super.key});

  @override
  State<DetailedSection> createState() => _DetailedSectionState();
}

class _DetailedSectionState extends State<DetailedSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Colors.black.withOpacity(0.9),
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 30,
                  child: Image.asset('assets/images/company_logo.png')),
              SizedBox(
                height: 30,
              ),
              Text(
                'Ea et exercitation cillupidatat ex quis anim \nincididunt cupidatat cofficia nisi.',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  AniIcon(
                      assetPath: 'assets/icons/facebook_icon.svg', size: 20.0),
                  SizedBox(
                    width: 10,
                  ),
                  AniIcon(assetPath: 'assets/icons/insta_icon.svg', size: 20.0),
                  SizedBox(
                    width: 10,
                  ),
                  AniIcon(
                      assetPath: 'assets/icons/linkedit_icon.svg', size: 20.0),
                  SizedBox(
                    width: 10,
                  ),
                  AniIcon(
                      assetPath: 'assets/icons/twitter_icon.svg', size: 20.0),
                  SizedBox(
                    width: 10,
                  ),
                  AniIcon(
                      assetPath: 'assets/icons/youtube_icon.svg', size: 20.0),
                ],
              )
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Expanded(child: DetailedSubSection())
        ],
      ),
    );
  }
}

class DetailedSubSection extends StatefulWidget {
  const DetailedSubSection({super.key});

  @override
  State<DetailedSubSection> createState() => _DetailedSubSectionState();
}

class _DetailedSubSectionState extends State<DetailedSubSection> {
  double _optionSpace = 40.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product',
                  style: TextStyle(
                      fontSize: 20,
                      color: PrimamryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: _optionSpace,
                ),
                AniLink(
                  text: "Features",
                ),
                AniLink(
                  text: "Pricing",
                ),
                AniLink(
                  text: "Case studies",
                ),
                AniLink(
                  text: "Reviewes",
                ),
                AniLink(
                  text: "Pricing",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company',
                  style: TextStyle(
                      fontSize: 20,
                      color: PrimamryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: _optionSpace,
                ),
                AniLink(
                  text: "About",
                ),
                AniLink(
                  text: "Contact Us",
                ),
                AniLink(
                  text: "Carriers",
                ),
                AniLink(
                  text: "Culture",
                ),
                AniLink(
                  text: "Blog",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Support',
                  style: TextStyle(
                      fontSize: 20,
                      color: PrimamryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: _optionSpace,
                ),
                AniLink(
                  text: "Getting Started",
                ),
                AniLink(
                  text: "Help Center",
                ),
                AniLink(
                  text: "Server Status",
                ),
                AniLink(
                  text: "Report a bug",
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: TextStyle(
                        fontSize: 18,
                        color: PrimamryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: _optionSpace,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.mail,
                        size: 20.0,
                        color: PrimamryColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(child: AniLink(text: 'yashfadadu@gmail.com'))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20.0,
                        color: PrimamryColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      AniLink(text: '+91 1234567890')
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.place,
                          color: PrimamryColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Rajkot,Gujarat,india-362205',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AniLink extends StatefulWidget {
  final String text;

  const AniLink({super.key, required this.text});

  @override
  _AniLinkState createState() => _AniLinkState();
}

class _AniLinkState extends State<AniLink> {
  bool isHovered = false;

  void _toggleHover(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: MouseRegion(
        onEnter: (event) {
          _toggleHover(true);
        },
        onExit: (event) {
          _toggleHover(false);
        },
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            fontSize: 18,
            color: isHovered ? PrimamryColor : Colors.grey,
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
          duration: const Duration(
              milliseconds:
                  50), // Increased animation duration for smoother transition
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}

class AniIcon extends StatefulWidget {
  final String assetPath;
  final double size;

  AniIcon({required this.assetPath, this.size = 24.0});

  @override
  _AniIconState createState() => _AniIconState();
}

class _AniIconState extends State<AniIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: SvgPicture.asset(
        widget.assetPath,
        width: widget.size,
        height: widget.size,
        color: isHovered
            ? PrimamryColor
            : Colors.grey, // Change the colors as needed
      ),
    );
  }
}

class AgestSection extends StatelessWidget {
  const AgestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Get the house in trust by working with our agents',
                    style: TextStyle(
                        color: PrimamryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: PrimamryColor.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(200)),
                            child: Icon(Icons.person, color: PrimamryColor)),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Eiusmod Lorem excepteur quis officia ullamco pariatur excepteur voluptate magna dolore consequat officia ad. pidatat cillum. Tempepteur voluptate magna dolore consequat officia ad. pidatat cillum. Temp or magna Lorem fugiat do ea ut proident amet in.',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: PrimamryColor.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(200)),
                            child: Icon(Icons.details, color: PrimamryColor)),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Eiusmod Lorem excepteur quis officia ullamco pariatur excepteur voluptate magna dolore consequat officia ad. pidatat coident amet in.',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/agent.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CeresolCard extends StatefulWidget {
  const CeresolCard({super.key});

  @override
  State<CeresolCard> createState() => _CeresolCardState();
}

class _CeresolCardState extends State<CeresolCard> {
  Color primaryColor = Color.fromRGBO(25, 70, 104, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 380,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey, // Shadow color
            offset: Offset(0, 3), // Shadow offset
            blurRadius: 6.0, // Shadow blur radius
            spreadRadius:
                -2.0, // Negative spread to make it look like an inset shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
                width: double.maxFinite,
                child: Image.asset(
                  'assets/images/home_page_house.jpg',
                  fit: BoxFit.contain,
                )),
          ),
          const Row(
            children: [
              Text(
                '456 clok Aurenue,New York,NY 10001',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 32, // Set your desired width
                height: 32, // Set your desired height
                child: Icon(
                  Icons.bed,
                  size: 20, // Set your desired icon size
                  color: Colors.grey,
                ),
              ),
              Text('3', style: TextStyle(color: Colors.grey, fontSize: 12)),
              SizedBox(
                width: 4,
              ),
              SizedBox(
                width: 32, // Set your desired width
                height: 32, // Set your desired height
                child: Icon(
                  Icons.bathroom_sharp,
                  size: 15, // Set your desired icon size
                  color: Colors.grey,
                ),
              ),
              Text('4', style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Text(
            'JackSon House',
            style: TextStyle(
                fontSize: 15, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '\$ 750,000.00',
            style: TextStyle(
                fontSize: 14, color: primaryColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Step3Section extends StatefulWidget {
  const Step3Section({super.key});

  @override
  State<Step3Section> createState() => _Step3SectionState();
}

class _Step3SectionState extends State<Step3Section> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Text(
            'Our Work in 3 Steps',
            style: TextStyle(
                fontSize: 50,
                color: PrimamryColor,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'property" refers to a piece of real estate, which is land and any structures or improvements on it.\n Properties can take various forms, including residential homes, apartments',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              SectionCard(
                  title: "Research phase",
                  des:
                      'Eu non velit est minim occaecat quis ullamco.kfdmf lemfl lw,eo  eofm.',
                  icon: Icon(
                    Icons.home,
                    size: 35,
                  )),
              SectionCard(
                  title: "Close the Deal",
                  des:
                      'Eu non velit est minim occaecat quis ullamco.kfdmf lemfl lw,eo  eofm.',
                  icon: Icon(
                    Icons.handshake,
                    size: 35,
                  )),
              SectionCard(
                  title: "Key delivery",
                  des:
                      'Eu non velit est minim occaecat quis ullamco.kfdmf lemfl lw,eo  eofm.',
                  icon: Icon(
                    Icons.key,
                    size: 35,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class SectionCard extends StatefulWidget {
  final String title;
  final String des;
  final Icon icon;
  const SectionCard(
      {required this.title, required this.des, required this.icon});

  @override
  State<SectionCard> createState() => SectionCardState();
}

class SectionCardState extends State<SectionCard> {
  double _elevation = 2;
  bool _isHovered = false;

  void _updateElevation(bool isElevated) {
    setState(() {
      _elevation = isElevated ? 6.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Section 3 Tapped.');
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          width: 300,
          height: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border:
                  Border.all(color: PrimamryColor.withOpacity(0.2), width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: _isHovered
                      ? PrimamryColor.withOpacity(0.2)
                      : Colors.white,
                  spreadRadius: _elevation,
                  blurRadius: _elevation * 10,
                ),
              ],
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: PrimamryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(200)),
                child: widget.icon,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: PrimamryColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.des,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AutoSlidePageSlider extends StatefulWidget {
  final PageController pageController;
  Timer? timer;

  AutoSlidePageSlider({required this.pageController});

  @override
  _AutoSlidePageSliderState createState() => _AutoSlidePageSliderState();
}

class _AutoSlidePageSliderState extends State<AutoSlidePageSlider> {
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    startTimer();
    widget.pageController.addListener(() {
      setState(() {
        currentPage = widget.pageController.page!.round();
      });
    });
  }

  void startTimer() {
    widget.timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (widget.pageController.page == 3) {
        widget.pageController.jumpToPage(0);
      } else {
        widget.pageController
            .nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
      }
    });
  }

  void stopTimer() {
    widget.timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350, // Set your desired height for AutoSlidePageSlider
          child: PageView(
            controller: widget.pageController,
            scrollDirection: Axis.horizontal,
            physics: PageScrollPhysics(),
            pageSnapping: false,
            children: [
              CeresolCard(),
              CeresolCard(),
              CeresolCard(),
              CeresolCard(),
              CeresolCard(),
              CeresolCard(),
              CeresolCard(),
              CeresolCard()
            ],
            onPageChanged: (page) {
              if (page == 0) {
                startTimer();
              } else {
                stopTimer();
              }
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 8,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(8.0),
            activeSize: const Size(16.0, 8.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    widget.pageController.dispose();
    stopTimer();
    super.dispose();
  }
}

class PrimamryButton extends StatefulWidget {
  const PrimamryButton({required this.text});

  final String text;

  @override
  State<PrimamryButton> createState() => _PrimamryButtonState();
}

class _PrimamryButtonState extends State<PrimamryButton> {
  double _elevation = 0.0;

  void _updateElevation(bool isElevated) {
    setState(() {
      _elevation = isElevated ? 6.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle button click
      },
      onTapDown: (_) {
        _updateElevation(true);
      },
      onTapUp: (_) {
        _updateElevation(false);
      },
      onTapCancel: () {
        _updateElevation(false);
      },
      child: AnimatedContainer(
        margin: EdgeInsets.all(10),
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: PrimamryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: _elevation,
              blurRadius: _elevation,
            ),
          ],
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
