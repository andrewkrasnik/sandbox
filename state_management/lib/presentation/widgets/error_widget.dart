import 'package:flutter/material.dart';

class ErrorDescriptionWidget extends StatelessWidget {
  final String description;
  final void Function()? onPressed;

  const ErrorDescriptionWidget(
      {required this.description, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(description),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: onPressed, child: const Text('Try again!'))
        ],
      ),
    );
  }
}
