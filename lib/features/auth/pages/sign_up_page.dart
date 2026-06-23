import 'package:flutter/material.dart';
import 'package:job_spot/features/auth/widgets/titled_text_field_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.06,
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Column(
            children: [
              Text(
                'Create an Account',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: size.width * 0.08,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
              Text.rich(
                TextSpan(
                  text:
                      "Welcome to JobSpot! We're excited to have you join us.",
                  children: [
                    TextSpan(text: "\nLet's create an account and get started"),
                  ],
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: size.width * 0.03,
                    color: Color(0xff524B6B),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.03),
              TitledTextFieldWidget(),
              TitledTextFieldWidget(),
              TitledTextFieldWidget(),
              SizedBox(height: size.height * 0.006),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle sign-up button tap
                },
                child: Container(
                  width: size.width * 0.7,
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(size.width * 0.03),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: size.width * 0.04,
                        color: colorScheme.surface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              InkWell(
                onTap: () {
                  // Handle sign-up button tap
                },
                child: Container(
                  width: size.width * 0.7,
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  decoration: BoxDecoration(
                    color: colorScheme.secondary,
                    borderRadius: BorderRadius.circular(size.width * 0.03),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google_icon.png',
                        height: size.height * 0.03,
                      ),
                      SizedBox(width: size.width * 0.04),
                      Text(
                        'Sign Up with Google',
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(
                              fontSize: size.width * 0.04,
                              color: colorScheme.surface,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: size.width * 0.04,
                      color: colorScheme.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: size.width * 0.04,
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
