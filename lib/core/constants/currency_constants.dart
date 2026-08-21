class CurrencyConstants {
  // Default Currency
  static const String defaultCurrency = 'LKR';
  static const String defaultCurrencySymbol = 'Rs';

  // Supported Currencies
  static const Map<String, String> currencies = {
    'LKR': 'Sri Lankan Rupee',
    'USD': 'US Dollar',
    'EUR': 'Euro',
    'GBP': 'British Pound',
    'INR': 'Indian Rupee',
    'AUD': 'Australian Dollar',
  };

  // Currency Symbols
  static const Map<String, String> currencySymbols = {
    'LKR': 'Rs',
    'USD': '\$',
    'EUR': '€',
    'GBP': '£',
    'INR': '₹',
    'AUD': 'A\$',
  };

  // Decimal Precision (Minor Units)
  static const Map<String, int> decimalPrecision = {
    'LKR': 2,
    'USD': 2,
    'EUR': 2,
    'GBP': 2,
    'INR': 2,
    'AUD': 2,
  };

  // Exchange Rates (placeholder - should be fetched from API)
  static const Map<String, double> exchangeRates = {
    'LKR_TO_USD': 0.0032,
    'USD_TO_LKR': 310.0,
    'LKR_TO_INR': 0.24,
    'INR_TO_LKR': 4.17,
  };
}
