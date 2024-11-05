import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                height: 80, // Reduced height for a compact look
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 0.1, // Softer shadow for a professional look
                      offset: Offset(0, 0),
                    ),
                  ],
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                      // width: 0.1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      // Profile image
                      Container(
                        height: 55, // Smaller image size
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                          image: const DecorationImage(
                            image: AssetImage("assets/logo.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 12), // Spacing between image and text

                      // Name and phone number
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Abdiaziiz A.Kadir",
                              style: TextStyle(
                                color: Color(0xFF34287A),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                                height: 1), // Spacing between name and phone
                            Text(
                              "252613963612",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Search icon
                      IconButton(
                        icon: Icon(
                          IconlyLight.search,
                          color: Colors.grey.shade600,
                          size: 22,
                        ),
                        onPressed: () {
                          // Define search icon action here
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
             Stack(
  alignment: Alignment.center,
  children: [
    Container(
      height: 155,
      width: 365,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/slid.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Positioned(
      bottom: 10, // Position dots at the bottom of the container
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Active dot color
            ),
          ),
          SizedBox(width: 4), // Space between dots
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Inactive dot color
            ),
          ),
          SizedBox(width: 4),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Inactive dot color
            ),
          ),
          SizedBox(width: 4),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Inactive dot color
            ),
          ),
        ],
      ),
    ),
  ],
),

              SizedBox(
                height: 16,
              ),
              Container(
                height: 200,
                width: 365,
                decoration: BoxDecoration(
                    color: Color(0xfff6f7f9),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                  color: Color(0xff3fe0d0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  LineIcons.cloudWithAChanceOfMeatball, // Use LineIcons icon here
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Buy Plan",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                  color: Color(0xffe5e6fa),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  IconlyLight.time_circle,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Speed Test",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Color(0xff87cfe8),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      IconlyLight.bag_2,
                                      color: Colors.white,
                                      size: 20,
                                    ))),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "My Products",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 21),
                          child: Column(
                            children: [
                              Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Color(0xffafe0e5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        IconlyLight.chart,
                                        color: Colors.white,
                                        size: 20,
                                      ))),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Data Usage",
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 34),
                          child: Column(
                            children: [
                              Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Color(
                                        0xfff0807f,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        IconlyLight.ticket,
                                        color: Colors.white,
                                        size: 20,
                                      ))),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Maintain Request",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Color(0xffe5e6fa),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      LineIcons.handshakeAlt
                                      ))),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Support",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 115,
                width: 365,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/medi.png"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    margin: EdgeInsets.only(left: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IPTV Entertainmnett Solution",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 13,),
                        Text(
                          "Ku shubo data xawaaro leh adigoo",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "isticmalaya app ka bluecom",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Featured Packages",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 33),
                    child: Text(
                      "More",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 200,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        image: DecorationImage(
                            image: AssetImage("assets/exte.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            height: 27,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color(0XFF34287a).withOpacity(0.3),
                            ),
                            child: Center(
                              child: Text(
                                "\$20",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 200,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        image: DecorationImage(
                            image: AssetImage("assets/exte.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            height: 27,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 183, 242).withOpacity(0.3),
                            ),
                            child: Center(
                              child: Text(
                                "\$50",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
