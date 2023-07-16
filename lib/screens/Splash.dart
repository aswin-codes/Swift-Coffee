import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Controllers
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //State Variables
  String userName = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 932.h,
          width: 430.w,
          
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/background.png',
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    height: 750.h,
                    width: 366.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/bg1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(17.r),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 0.524, 1.0],
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.23),
                          Color.fromRGBO(255, 255, 255, 0.12),
                          Color.fromRGBO(255, 255, 255, 0.11),
                        ],
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.20),
                          offset: Offset(0, 4),
                          blurRadius: 24,
                          spreadRadius: -1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 57.h,
                        ),
                        Image.asset(
                          "assets/images/logo.png",
                          height: 70.h,
                          width: 89.w,
                        ),
                        Text(
                          "Swift",
                          style: GoogleFonts.raleway(
                              fontSize: 64.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Café",
                          style: GoogleFonts.raleway(
                              fontSize: 40.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "Latte but never late",
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFABABAB),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              shadows: const [
                                Shadow(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 0.87),
                                    offset: Offset(0, 0),
                                    blurRadius: 20)
                              ]),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        TextField(
                          onChanged: (_) {
                            setState(() {
                              userName = _;
                            });
                          },
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                          controller: _userNameController,
                          decoration: InputDecoration(
                              constraints: BoxConstraints(maxWidth: 311.w),
                              hintText: "User Name",
                              hintStyle: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 19.h, horizontal: 10.w),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.5)))),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        TextField(
                          onChanged: (_) {
                            setState(() {
                              password = _;
                            });
                          },
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                          controller: _passwordController,
                          decoration: InputDecoration(
                              constraints: BoxConstraints(maxWidth: 311.w),
                              hintText: "Password",
                              hintStyle: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 19.h, horizontal: 10.w),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.5)))),
                        ),
                        SizedBox(
                          height: 69.h,
                        ),
                        SizedBox(
                          width: 245.w,
                          child: ElevatedButton(
                            onPressed: () {
                              // Button onPressed logic
                              Navigator.pushNamed(context, '/');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              primary: Colors.transparent,
                              onPrimary: Colors.white,
                              elevation: 0,
                              textStyle: TextStyle(fontWeight: FontWeight.bold),
                              shadowColor: Colors.black.withOpacity(0.65),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4D2B1A),
                                    Color(0xFFA7745A),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0, minHeight: 36.0),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 39.h,
                        ),
                        SizedBox(
                          width: 245.w,
                          child: ElevatedButton(
                            onPressed: () {
                              // Button onPressed logic
                              Navigator.pushNamed(context, '/');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              primary: Colors.transparent,
                              onPrimary: Colors.white,
                              elevation: 0,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              shadowColor: Colors.black.withOpacity(0.65),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(33),
                                  border: Border.all(
                                      color: const Color(0xFFF8F8F8), width: 1)),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0, minHeight: 36.0),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Signup',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Text(
                          "Privacy Policy",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
