import 'package:buyzer/widgets/my_btn_widget.dart';
import 'package:buyzer/widgets/text_form_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    Widget buildTopPart() {
      return Padding(
        padding: const EdgeInsets.all(30), // Added 'const' keyword here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome\nBack!", style: TextStyle(fontFamily: "Ubuntu Bold", fontSize: 30)),
            SizedBox(height: 50),
            MyTextFormFields(
              hintText: "Email Address",
              obscureText: false,
              prefixIcon: Icons.email,
              controller: emailController,// Specify the icon here
            ),
            SizedBox(height: 20),
            MyTextFormFields(
              hintText: "Password",
              obscureText: true,
              prefixIcon: Icons.lock,
              controller: passwordController,// Specify the icon here
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            MyButton(btnText: "Sign In", ontap: (){
              String email = emailController.text.toString();
              String password = passwordController.text.toString();

              print("Your email is $email and password is $password");
            })
          ],
        ),
      );
    }


    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
