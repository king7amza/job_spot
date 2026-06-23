import 'package:flutter/material.dart';

class TitledTextFieldWidget extends StatelessWidget {
  const TitledTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Full Name",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: size.width * 0.034,
            color: colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: size.height * 0.01),
        TextField(
          decoration: InputDecoration(
            fillColor: colorScheme.surfaceDim,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.width * 0.03),
              borderSide: BorderSide.none,
            ),
            filled: true,
            hintText: "Enter your full name",
            hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: size.width * 0.034,
              color: colorScheme.outline,
            ),
          ),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: size.width * 0.04,
            color: colorScheme.primary,
          ),
        ),
        SizedBox(height: size.height * 0.01),
      ],
    );
  }
}
