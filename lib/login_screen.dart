import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_app/controller/auth_controller.dart';
import 'package:register_app/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: Text(
        //   'Login',
        //   style: TextStyle(
        //     fontSize: 32,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.white,
        //   ),
        // ),
        backgroundColor: Color.fromARGB(255, 87, 224, 8),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 225, 182, 8),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Obx(
                () => TextField(
                  controller: authController.emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 255, 230, 2)),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color(0xFF493AD5)),
                    errorText:
                        authController.isEmailValid.value
                            ? null
                            : 'Please enter a valid email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 24),
              Obx(
                () => TextField(
                  controller: authController.passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Color(0xFF493AD5)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFF493AD5)),
                    errorText:
                        authController.isPasswordValid.value
                            ? null
                            : 'Password must be at least 6 characters',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => authController.login(),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF493AD5),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 24),
              TextButton(
                onPressed: () => Get.to(() => SignupScreen()),
                child: Text(
                  'Don\'t have an account? Sign Up',
                  style: TextStyle(color: Color(0xFF493AD5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
