import 'package:flutter/material.dart';
import 'package:practice_app/widgets/custom_button.dart';
import 'package:practice_app/widgets/custum_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Logo + Title
              Column(
                children: [
                  Text(
                    "STEP IN WAY",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "STEP CLOSER TO YOUR DREAM",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Tabs (ورود / ثبت‌نام)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "ورود",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "ثبت‌نام",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Form Fields
              const CustomTextField(hintText: "نام"),
              const CustomTextField(hintText: "نام خانوادگی"),
              const CustomTextField(
                hintText: "شماره تلفن",
                keyboardType: TextInputType.phone,
              ),
              const CustomTextField(
                hintText: "ایمیل خود را وارد کنید",
                keyboardType: TextInputType.emailAddress,
              ),
              const CustomTextField(
                hintText: "کلمه عبور دلخواه",
                obscureText: true,
              ),
              const SizedBox(height: 12),

              // Register Button
              CustomButton(text: "ثبت‌نام", onPressed: () {}),
              const SizedBox(height: 12),

              // Google & Apple Buttons
              CustomButton(
                text: "ورود به سیستم با گوگل",
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {},
              ),
              const SizedBox(height: 8),
              CustomButton(
                text: "ورود به سیستم با اپل",
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {},
              ),

              const SizedBox(height: 16),
              const Text(
                "عضویت شما به معنای پذیرش شرایط و قوانین سایت و حریم‌خصوصی است.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
