import 'package:intl/intl.dart';
import '../constants/currency_constants.dart';

class CurrencyFormatter {
  /// Format amount to currency string with proper symbol and precision
  static String format(
    double amount, {
    String currency = 'LKR',
    bool includeSymbol = true,
    bool includeCode = false,
  }) {
    final symbol = CurrencyConstants.currencySymbols[currency] ?? 'Rs';
    final precision = CurrencyConstants.decimalPrecision[currency] ?? 2;

    // Format the number
    final numberFormat = NumberFormat('#,##0.' + '0' * precision);
    final formattedAmount = numberFormat.format(amount);

    if (includeSymbol && includeCode) {
      return '$symbol $formattedAmount $currency';
    } else if (includeSymbol) {
      return '$symbol $formattedAmount';
    } else if (includeCode) {
      return '$formattedAmount $currency';
    }
    return formattedAmount;
  }

  /// Format amount as compact notation (e.g., 1.2M, 3.5K)
  static String formatCompact(
    double amount, {
    String currency = 'LKR',
  }) {
    final symbol = CurrencyConstants.currencySymbols[currency] ?? 'Rs';

    if (amount.abs() >= 1000000) {
      final millions = amount / 1000000;
      return '$symbol${millions.toStringAsFixed(1)}M';
    } else if (amount.abs() >= 1000) {
      final thousands = amount / 1000;
      return '$symbol${thousands.toStringAsFixed(1)}K';
    }
    return '$symbol${amount.toStringAsFixed(2)}';
  }

  /// Convert amount to minor units (cents)
  static int toMinorUnits(double amount) {
    return (amount * 100).toInt();
  }

  /// Convert from minor units back to double
  static double fromMinorUnits(int minorUnits) {
    return minorUnits / 100.0;
  }

  /// Safe arithmetic - add two amounts
  static double safeAdd(double a, double b) {
    final result = (toMinorUnits(a) + toMinorUnits(b)).toDouble();
    return fromMinorUnits(result.toInt());
  }

  /// Safe arithmetic - subtract two amounts
  static double safeSubtract(double a, double b) {
    final result = (toMinorUnits(a) - toMinorUnits(b)).toDouble();
    return fromMinorUnits(result.toInt());
  }

  /// Safe arithmetic - multiply
  static double safeMultiply(double a, double b) {
    final result = (toMinorUnits(a) * b).toDouble();
    return fromMinorUnits(result.toInt());
  }
}
