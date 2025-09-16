import 'package:amritha_ayurveda/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage("assets/images/login_backgroundimage.png"),
                fit: BoxFit.cover,
              ),
            ),
            height: 30.h,
            width: 100.w,
            child: Center(
              child: SizedBox(
                height: 20.w,
                width: 20.w,
                child: SvgPicture.asset("assets/images/logo.svg"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 0.25.dp,
                  vertical: 0.30.dp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login or register to book your appointments",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(height: 0.3.dp),
                    Text("Email"),
                    SizedBox(height: 0.2.dp),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.inputBoxColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.borderColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.borderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.borderColor,
                            width: 2,
                          ),
                        ),
                        hintText: 'Enter your email',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
