import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget NavItem(String nama, int index) {
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
              nama,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight: index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                color: selectedIndex == index ? Color(0xffFE998D) : Colors.transparent,
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
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Column(
            children: [
              // Navbar

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    width: 72,
                    height: 40,
                  ),
                  Row(children: [
                    NavItem('Guides', 0),
                    SizedBox(
                      width: 50,
                    ),
                    NavItem('Pricing', 1),
                    SizedBox(
                      width: 50,
                    ),
                    NavItem('Team', 2),
                    SizedBox(
                      width: 50,
                    ),
                    NavItem('Stories', 3),
                  ]),
                  Image.asset(
                    'button_account.png',
                    width: 153,
                    height: 40,
                  ),
                ],
              ),

              // NOTE : Content
              SizedBox(
                height: 70,
              ),
              Image.asset(
                'ilustration.png',
                width: 500,
              ),

              // NOTE : FOOTER
              SizedBox(
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'down.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
