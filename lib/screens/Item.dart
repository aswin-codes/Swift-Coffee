import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> list = <String>['1', '2', '3', '4'];

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  //State variables for number of cups
  String dropdownValue = list[0];

  //State variables for Choice of filling
  bool isFull = true;
  bool isHalf = false;
  bool isQuarter = false;
  bool isThreeQuarter = false;

  //State variables for choice of Milk
  bool isSkim = false;
  bool isAlmond = false;
  bool isSoy = false;
  bool isLactoseFree = false;
  bool isFullCream = true;
  bool isOat = false;

  //State variables for choice of Sugar
  bool isX1 = false;
  bool isX2 = true;
  bool isX12 = false;
  bool isX0 = false;

  //State Variables for High Priority
  bool isHighPriority = false;

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
              child: Container(
                height: 416.h,
                width: 430.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/coffee_6.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter)),
                child: Container(
                  height: 416.h,
                  width: 430.w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.67),
                        Color.fromRGBO(255, 255, 255, 0.00),
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 546.h,
                width: 430.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(29.r),
                    topRight: Radius.circular(29.r),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/bg1.png"),
                          fit: BoxFit.cover,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          stops: [0.0, 0.4667, 1.0],
                          colors: [
                            Color.fromRGBO(48, 48, 52, 0.60),
                            Color.fromRGBO(124, 124, 124, 0.59),
                            Color.fromRGBO(39, 39, 39, 0.58),
                          ],
                          transform: GradientRotation(136 * 3.14 / 180),
                        ),
                      ),
                      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lattè",
                                        style: GoogleFonts.inter(
                                            color: const Color(0xFFCDCDCD),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Row(children: [
                                        Text(
                                          "4.9",
                                          style: GoogleFonts.inter(
                                              color: const Color(0xFFC4C4C4),
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
                                              color: const Color(0xFFC4C4C4),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Image.asset(
                                          "assets/images/green_dot.png",
                                          height: 14.h,
                                          width: 14.w,
                                        )
                                      ]),
                                    ]),
                                DropdownButton(
                                    style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF9B9B9B)),
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    value: dropdownValue,
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()),
                              ],
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            SizedBox(
                              width: 347.w,
                              child: Text(
                                "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                style: GoogleFonts.inter(
                                    color: const Color(0xFFC0C0C0),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "Choice of Cup Filling",
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: const Color(0xFFCDCDCD),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isFull = true;
                                        isHalf =
                                            isQuarter = isThreeQuarter = false;
                                      });
                                    },
                                    child: Container(
                                      height: 27.h,
                                      width: 51.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          color: isFull
                                              ? const Color(0xFF37AD54)
                                              : const Color(0xFFD9D9D9)),
                                      child: Center(
                                          child: Text(
                                        "Full",
                                        style: GoogleFonts.inter(
                                            color: isFull
                                                ? const Color(0xFFD9D9D9)
                                                : Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: isFull
                                                ? FontWeight.w700
                                                : FontWeight.w300),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isHalf = true;
                                        isFull =
                                            isQuarter = isThreeQuarter = false;
                                      });
                                    },
                                    child: Container(
                                      height: 27.h,
                                      width: 51.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          color: isHalf
                                              ? const Color(0xFF37AD54)
                                              : const Color(0xFFD9D9D9)),
                                      child: Center(
                                          child: Text(
                                        "1/2 Full",
                                        style: GoogleFonts.inter(
                                            color: isHalf
                                                ? const Color(0xFFD9D9D9)
                                                : Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: isHalf
                                                ? FontWeight.w700
                                                : FontWeight.w300),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isThreeQuarter = true;
                                        isFull = isQuarter = isHalf = false;
                                      });
                                    },
                                    child: Container(
                                      height: 27.h,
                                      width: 51.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          color: isThreeQuarter
                                              ? const Color(0xFF37AD54)
                                              : const Color(0xFFD9D9D9)),
                                      child: Center(
                                          child: Text(
                                        "3/4 Full",
                                        style: GoogleFonts.inter(
                                            color: isThreeQuarter
                                                ? const Color(0xFFD9D9D9)
                                                : Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: isThreeQuarter
                                                ? FontWeight.w700
                                                : FontWeight.w300),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isQuarter = true;
                                        isFull =
                                            isThreeQuarter = isHalf = false;
                                      });
                                    },
                                    child: Container(
                                      height: 27.h,
                                      width: 51.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          color: isQuarter
                                              ? const Color(0xFF37AD54)
                                              : const Color(0xFFD9D9D9)),
                                      child: Center(
                                          child: Text(
                                        "1/4 Full",
                                        style: GoogleFonts.inter(
                                            color: isQuarter
                                                ? const Color(0xFFD9D9D9)
                                                : Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: isQuarter
                                                ? FontWeight.w700
                                                : FontWeight.w300),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Text(
                              "Choice of Milk",
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: const Color(0xFFCDCDCD),
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isSkim,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isSkim = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Skim Milk",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isAlmond,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isAlmond = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Almond Milk",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isSoy,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isSoy = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Soy Milk",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isLactoseFree,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isLactoseFree = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Lactose free Milk",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isFullCream,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isFullCream = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Full Cream \nMilk",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isOat,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isOat = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Oat Milk",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Choice of Cup Filling",
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  color: const Color(0xFFCDCDCD),
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isX1,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isX1 = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Sugar X1",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isX12,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isX12 = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "1/2 Sugar",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isX2,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isX2 = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Sugar X2",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.5,
                                            child: Switch(
                                                activeColor:
                                                    const Color(0xFF66CF4B),
                                                value: isX0,
                                                onChanged: (_) {
                                                  setState(() {
                                                    isX0 = _;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "No Sugar",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xFFCDCDCD)),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Align(
                              alignment: Alignment.center,
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
                                  children: [
                                    SizedBox(width: 39.w),
                                    Checkbox(
                                        activeColor: const Color(0xFF66CF4B),
                                        value: isHighPriority,
                                        onChanged: (_) {
                                          setState(() {
                                            isHighPriority = _!;
                                          });
                                        }),
                                    SizedBox(width: 4.w),
                                    Text("High Priority",
                                        style: GoogleFonts.inter(
                                            fontSize: 16.sp,
                                            color: const Color(0xFFCDCDCD),
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(width: 2.w),
                                    Image.asset("assets/icons/error.png",
                                        width: 15.h, height: 15.h),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        //Logic for On tap
                                      },
                                      child: Container(
                                          height: 44.h,
                                          width: 130.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.5),
                                            gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              stops: [0.0, 1.0],
                                              colors: [
                                                Color.fromRGBO(
                                                    25, 129, 51, 0.77),
                                                Color.fromRGBO(
                                                    55, 173, 84, 0.88),
                                              ],
                                              transform: GradientRotation(
                                                  127 * 3.14 / 180),
                                            ),
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(0, 4),
                                                blurRadius: 4,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.25),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                              child: Text("Submit",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xFFCDCDCD),
                                                      fontWeight:
                                                          FontWeight.w700)))),
                                    ),
                                    SizedBox(width: 10.w),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
