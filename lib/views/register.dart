import 'package:flutter/material.dart';
import '../components/bouton.dart';
import '../components/champs_text.dart';

class RegisterView extends StatefulWidget {
  final void Function()? onTap;

  const RegisterView({Key? key, required this.onTap}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign up user
  void signUp() {
    // Implement your sign-up logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // logo
                Icon(
                  Icons.message,
                  size: 100,
                  color: Colors.grey[800],
                ),
                // create account message
                const Text(
                  "Let's create an account for you!",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 25),
                // email textfield
                ChampText(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                // password textfield
                ChampText(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                // confirm password textfield
                ChampText(
                  controller: confirmPasswordController,
                  hintText: 'Confirm password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                Bouton(onTap: signUp, text: "Sign Up"),

                const SizedBox(height: 50),
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
