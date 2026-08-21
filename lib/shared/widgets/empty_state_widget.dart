import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? icon;
  final String? buttonLabel;
  final VoidCallback? onButtonPressed;

  const EmptyStateWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.buttonLabel,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...
                [
                  Text(
                    icon!,
                    style: const TextStyle(fontSize: 64),
                  ),
                  const SizedBox(height: 16),
                ],
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              if (buttonLabel != null && onButtonPressed != null) ...
                [
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: onButtonPressed,
                    child: Text(buttonLabel!),
                  ),
                ],
            ],
          ),
        ),
      ),
    );
  }
}
