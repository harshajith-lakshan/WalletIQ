import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String category;
  final String description;
  final double amount;
  final String wallet;
  final DateTime date;
  final String type; // income, expense, transfer
  final String? icon;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const TransactionTile({
    Key? key,
    required this.category,
    required this.description,
    required this.amount,
    required this.wallet,
    required this.date,
    required this.type,
    this.icon,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  Color _getTypeColor(BuildContext context) {
    switch (type) {
      case 'income':
        return Theme.of(context).colorScheme.secondary;
      case 'expense':
        return Theme.of(context).colorScheme.tertiary;
      case 'transfer':
        return Theme.of(context).colorScheme.primary;
      default:
        return Theme.of(context).colorScheme.outline;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final dateOnly = DateTime(date.year, date.month, date.day);

    if (dateOnly == today) {
      return 'Today';
    } else if (dateOnly == yesterday) {
      return 'Yesterday';
    } else {
      return '${date.day} ${_getMonthName(date.month)}';
    }
  }

  String _getMonthName(int month) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    final typeColor = _getTypeColor(context);
    final amountPrefix = type == 'income' ? '+' : type == 'expense' ? '-' : '';

    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: typeColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  icon ?? '💰',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '$category • $wallet',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$amountPrefix${amount.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: typeColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _formatDate(date),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
