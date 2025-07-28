import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Sign up to get started!",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 40),

            // Form
            Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildTextField(
                    icon: Icons.person,
                    hint: "Full Name",
                    validator:
                        (value) => value!.isEmpty ? "Enter your name" : null,
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    icon: Icons.email,
                    hint: "Email Address",
                    keyboard: TextInputType.emailAddress,
                    validator:
                        (value) =>
                            value!.contains('@') ? null : "Enter a valid email",
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    icon: Icons.lock,
                    hint: "Password",
                    isPassword: true,
                    validator:
                        (value) =>
                            value!.length < 6 ? "Password too short" : null,
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    icon: Icons.lock_outline,
                    hint: "Confirm Password",
                    isPassword: true,
                    validator:
                        (value) =>
                            value!.length < 6 ? "Password too short" : null,
                  ),
                  const SizedBox(height: 30),

                  // Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle sign up action
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Social sign up
            Center(
              child: Column(
                children: [
                  Text(
                    "Or sign up with",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(FontAwesomeIcons.google, Colors.red),
                      const SizedBox(width: 20),
                      _buildSocialIcon(FontAwesomeIcons.facebook, Colors.blue),
                      const SizedBox(width: 20),
                      _buildSocialIcon(FontAwesomeIcons.apple, Colors.black),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Already have an account
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Already have an account? Log In",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required IconData icon,
    required String hint,
    TextInputType keyboard = TextInputType.text,
    bool isPassword = false,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyboard,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blueAccent),
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: color.withOpacity(0.1),
      child: Icon(icon, color: color, size: 28),
    );
  }
}
