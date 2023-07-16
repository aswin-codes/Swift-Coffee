import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg1.png"),
                    fit: BoxFit.cover),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.23),
                    Color.fromRGBO(255, 255, 255, 0.12),
                    Color.fromRGBO(255, 255, 255, 0.11),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.524, 1.0],
                  transform: GradientRotation(136 * 3.14 / 180),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.20),
                    offset: Offset(0, 4),
                    blurRadius: 24,
                    spreadRadius: -1,
                  ),
                ],
              ),
              child: SafeArea(
                  child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 11.h,
                      ),
                      SizedBox(
                        height: 42.h,
                        width: 388.w,
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/waving_hand.png",
                              height: 27.h,
                              width: 27.w,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20/12/2022",
                                  style: GoogleFonts.inter(
                                      fontSize: 13.sp,
                                      color: const Color(0xFFB6B6B6),
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "Joshua Scanlan",
                                  style: GoogleFonts.inter(
                                      fontSize: 18.sp,
                                      color: const Color(0xFFB6B6B6),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF9F9F9),
                                  borderRadius: BorderRadius.circular(7.r)),
                              child: Center(
                                child: Image.asset(
                                  "assets/icons/delete.png",
                                  height: 16.2.h,
                                  width: 18.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color(0xFF71AB7A)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.15),
                                        offset: Offset(2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: CircleAvatar(
                                radius: 19.r,
                                backgroundImage: const AssetImage(
                                    "assets/images/profile.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Container(
                        height: 355.h,
                        width: double.maxFinite,
                        color: const Color.fromRGBO(49, 49, 49, 0.45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 18.h, left: 20.w, bottom: 18.h),
                              child: Text(
                                "Most Popular Beverages",
                                style: GoogleFonts.inter(
                                    color: const Color(0xFFB6B6B6),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 266.h,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, "/item");
                                      },
                                      child: CoffeeCard(
                                          imagePath:
                                              "assets/images/coffee_1.png"),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(context, "/item");
                                      },
                                      child: CoffeeCard(
                                          imagePath:
                                              "assets/images/coffee_2.png"),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(context, "/item");
                                      },
                                      child: CoffeeCard(
                                          imagePath:
                                              "assets/images/coffee_3.png"),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, top: 21.h, bottom: 21.h),
                          child: Text(
                            "Get it instantly",
                            style: GoogleFonts.inter(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFB6B6B6)),
                          ),
                        ),
                      ),
                      CoffeeTile(
                          name: "Lattè",
                          imagePath: "assets/images/coffee_4.png"),
                      CoffeeTile(
                          name: "Flat White",
                          imagePath: "assets/images/coffee_5.png"),
                      CoffeeTile(
                          name: "Flat White",
                          imagePath: "assets/images/coffee_4.png"),
                          SizedBox(height: 75.h,)
                    ],
                  ),
                ),
              )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 15.h),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
                  child: Container(
                    height: 70.h,
                    width: 374.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(51, 51, 51, 0.84),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF2D2D2D),
                            border: Border.all(
                              color: const Color(0xFF5E5E5E),
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.25),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 22.5.r,
                            child: Center(
                              child: Image.asset(
                                "assets/icons/home.png",
                                height: 17.778.h,
                                width: 16.w,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigate to respective screen
                          },
                          child: Image.asset(
                            "assets/icons/account.png",
                            height: 19.h,
                            width: 19.w,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigate to respective screen
                          },
                          child: Image.asset(
                            "assets/icons/files.png",
                            height: 16.2.h,
                            width: 18.w,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigate to respective screen
                          },
                          child: Image.asset(
                            "assets/icons/bin.png",
                            height: 16.2.h,
                            width: 18.w,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigate to respective screen
                          },
                          child: Image.asset(
                            "assets/icons/chat.png",
                            height: 19.125.h,
                            width: 18.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  String imagePath;
  CoffeeCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 265.h,
          width: 213.w,
          padding: EdgeInsets.only(left: 27.w, bottom: 12.h, right: 15.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(255, 255, 255, 0.36),
                Color.fromRGBO(255, 255, 255, 0.18),
                Color.fromRGBO(255, 255, 255, 0.30),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.4771, 1.0],
              transform: GradientRotation(135 * 3.14 / 180),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.20),
                offset: Offset(2, 2),
                blurRadius: 4,
                spreadRadius: -1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 29.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  height: 128.h,
                  width: 131.w,
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Text(
                "Hot Cappuccino",
                style: GoogleFonts.inter(
                    color: const Color(0xFFCDCDCD),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Espresso, Steamed Milk",
                style: GoogleFonts.inter(
                    fontSize: 10.sp,
                    color: const Color(0xFF303030),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Text(
                      "4.9",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Image.asset(
                      "assets/images/star.png",
                      height: 10.31.h,
                      width: 11.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "(458)",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: const Color(0xFF66A35C)),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeTile extends StatelessWidget {
  String name;
  String imagePath;
  CoffeeTile({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      height: 163.h,
      width: 390.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color.fromRGBO(180, 180, 180, 0.33),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      ),
      child: Container(
        padding:
            EdgeInsets.only(left: 24.w, top: 20.h, right: 14.w, bottom: 20.h),
        height: 163.h,
        width: 390.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color.fromRGBO(180, 180, 180, 0.33),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.inter(
                      color: const Color(0xFFCDCDCD),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "4.9",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: const Color(0xFF1D1D1D),
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Image.asset(
                      "assets/images/star.png",
                      height: 10.3.h,
                      width: 11.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "(458)",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: const Color(0xFF1D1D1D),
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset(
                      "assets/images/green_dot.png",
                      height: 14.h,
                      width: 14.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 202.w,
                  child: Text(
                    "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                    style: GoogleFonts.inter(
                        color: const Color(0xFFC0C0C0),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            spreadRadius: -7,
                            color: Color.fromRGBO(0, 0, 0, 0.20))
                      ]),
                  child: Image.asset(
                    imagePath,
                    height: 122.h,
                    width: 119.w,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 30.w,
                  child: GestureDetector(
                    onTap: () {
                      //Ontap logic
                    },
                    child: Container(
                      height: 19.h,
                      width: 52.w,
                      decoration: BoxDecoration(
                          color: const Color(0xFF66A35C),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "ADD",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
