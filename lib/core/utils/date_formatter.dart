import 'package:intl/intl.dart';

class DateFormatter {
  /// Format date to standard format (e.g., "Aug 21, 2026")
  static String formatDate(DateTime date) {
    return DateFormat('MMM dd, yyyy').format(date);
  }

  /// Format date time (e.g., "Aug 21, 2026 at 3:30 PM")
  static String formatDateTime(DateTime dateTime) {
    return DateFormat('MMM dd, yyyy \\a\\t h:mm a').format(dateTime);
  }

  /// Format time only (e.g., "3:30 PM")
  static String formatTime(DateTime dateTime) {
    return DateFormat('h:mm a').format(dateTime);
  }

  /// Format date as ISO string (e.g., "2026-08-21")
  static String formatDateISO(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  /// Format date for display in transactions (e.g., "Today", "Yesterday", "Aug 21")
  static String formatRelativeDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final dateOnly = DateTime(date.year, date.month, date.day);

    if (dateOnly == today) {
      return 'Today';
    } else if (dateOnly == yesterday) {
      return 'Yesterday';
    } else if (dateOnly.year == today.year) {
      return DateFormat('MMM dd').format(date);
    } else {
      return formatDate(date);
    }
  }

  /// Format month and year (e.g., "August 2026")
  static String formatMonthYear(DateTime date) {
    return DateFormat('MMMM yyyy').format(date);
  }

  /// Get week day name (e.g., "Monday")
  static String formatDayName(DateTime date) {
    return DateFormat('EEEE').format(date);
  }

  /// Get short day name (e.g., "Mon")
  static String formatDayNameShort(DateTime date) {
    return DateFormat('EEE').format(date);
  }

  /// Parse date from string
  static DateTime? parseDate(String dateString) {
    try {
      return DateTime.parse(dateString);
    } catch (e) {
      return null;
    }
  }

  /// Get start of month
  static DateTime getMonthStart(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  /// Get end of month
  static DateTime getMonthEnd(DateTime date) {
    final nextMonth = DateTime(date.year, date.month + 1, 1);
    return nextMonth.subtract(const Duration(days: 1));
  }

  /// Get start of year
  static DateTime getYearStart(DateTime date) {
    return DateTime(date.year, 1, 1);
  }

  /// Get end of year
  static DateTime getYearEnd(DateTime date) {
    return DateTime(date.year, 12, 31);
  }
}
