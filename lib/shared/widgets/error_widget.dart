import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final String message;
  final String? icon;
  final String? buttonLabel;
  final VoidCallback? onRetry;

  const ErrorWidget({
    Key? key,
    required this.message,
    this.icon,
    this.buttonLabel = 'Retry',
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
              'Oops! Something went wrong',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...
              [
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onRetry,
                  child: Text(buttonLabel ?? 'Retry'),
                ),
              ],
          ],
        ),
      ),
    );
  }
}
