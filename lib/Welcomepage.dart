import 'package:flutter/material.dart';
import './AppTheme.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(

        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor,
                  radius: screenWidth * 0.1,
                  child: Icon(Icons.handshake, color: Colors.white, size: screenWidth * 0.1),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  'Welcome to Effortive!',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Login to your account to continue',
                  style: TextStyle(fontSize: screenWidth * 0.04, color: AppTheme.disabledTextColor),
                ),
                SizedBox(height: screenHeight * 0.03),
                Container(

                  alignment: Alignment.center,
                  height: screenHeight * 0.475,
                  padding: EdgeInsets.all(screenWidth * 0.06),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: screenWidth * 0.03,
                        offset: Offset(0, screenWidth * 0.015),
                      ),
                    ],
                  ),
                  child: Column(
                    spacing: 2,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [


                      Text('Email Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.04,
                            color: AppTheme.primaryTextColor,
                          )),
                      SizedBox(height: screenHeight * 0.008),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),

                          hintText:  'you@example.com',
                          prefixIcon: Icon(Icons.email,
                              color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),


                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.015),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Password',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.04,
                                color: AppTheme.primaryTextColor,
                              )),
                          TextButton(
                            onPressed: () {},
                            child:  Text('Forgot Password?',
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontSize: screenWidth * 0.035,
                                )),
                          ),
                        ],
                      ),
                      TextField(

                        obscureText: true,
                        // decoration: InputDecoration(
                        //
                        //
                        //   prefixIcon: Icon(Icons.lock,
                        //
                        //       color: AppTheme.disabledTextColor, size: 20),
                        //
                        //   border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        //   ),
                        // ),

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),

                          hintText:  '******',
                          prefixIcon: Icon(Icons.lock,
                              color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),


                          ),
                        ),



                      ),

                      SizedBox(height: screenHeight * 0.03),


                      ElevatedButton(
                        onPressed: () {},
                        style: AppTheme.lightTheme.elevatedButtonTheme.style?.copyWith(
                          backgroundColor:
                          MaterialStateProperty.all(AppTheme.primaryColor),
                          minimumSize: MaterialStateProperty.all(
                              Size(double.infinity, screenHeight * 0.06)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          )),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.045),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      /// --- Google Sign In Button ---
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.g_mobiledata,
                            size: screenWidth * 0.08, color: Colors.black),
                        label: Text('Sign in with Google',
                            style: TextStyle(
                                fontSize: screenWidth * 0.045, color: Colors.black)),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, screenHeight * 0.06),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.025),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.black),
                      children: const [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
