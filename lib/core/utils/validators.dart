class Validators {
  /// Validate email format
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}',
    );
    if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  /// Validate password
  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }
    if (password.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  /// Validate required field
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  /// Validate amount
  static String? validateAmount(String? amount) {
    if (amount == null || amount.isEmpty) {
      return 'Amount is required';
    }
    try {
      final parsedAmount = double.parse(amount);
      if (parsedAmount <= 0) {
        return 'Amount must be greater than 0';
      }
      if (parsedAmount > 999999999.99) {
        return 'Amount exceeds maximum limit';
      }
    } catch (e) {
      return 'Please enter a valid amount';
    }
    return null;
  }

  /// Validate phone number
  static String? validatePhone(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegex = RegExp(r'^[0-9]{10,}');
    if (!phoneRegex.hasMatch(phone.replaceAll(RegExp(r'[^0-9]'), ''))) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  /// Validate name
  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    }
    if (name.length < 2) {
      return 'Name must be at least 2 characters';
    }
    if (name.length > 100) {
      return 'Name must not exceed 100 characters';
    }
    return null;
  }

  /// Validate URL
  static String? validateUrl(String? url) {
    if (url == null || url.isEmpty) {
      return 'URL is required';
    }
    try {
      Uri.parse(url);
      return null;
    } catch (e) {
      return 'Please enter a valid URL';
    }
  }

  /// Validate number range
  static String? validateNumberRange(
    String? value,
    double min,
    double max,
  ) {
    if (value == null || value.isEmpty) {
      return 'Value is required';
    }
    try {
      final number = double.parse(value);
      if (number < min || number > max) {
        return 'Value must be between $min and $max';
      }
    } catch (e) {
      return 'Please enter a valid number';
    }
    return null;
  }

  /// Validate percentage (0-100)
  static String? validatePercentage(String? value) {
    return validateNumberRange(value, 0, 100);
  }
}
