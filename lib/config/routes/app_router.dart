import 'package:flutter/material.dart';

class AppRouter {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgot-password';
  static const String emailVerification = '/email-verification';
  static const String dashboard = '/dashboard';
  static const String wallets = '/wallets';
  static const String addWallet = '/add-wallet';
  static const String editWallet = '/edit-wallet';
  static const String transactions = '/transactions';
  static const String addTransaction = '/add-transaction';
  static const String editTransaction = '/edit-transaction';
  static const String transactionDetails = '/transaction-details';
  static const String loans = '/loans';
  static const String addLoan = '/add-loan';
  static const String loanDetails = '/loan-details';
  static const String goals = '/goals';
  static const String addGoal = '/add-goal';
  static const String goalDetails = '/goal-details';
  static const String analytics = '/analytics';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsOfService = '/terms-of-service';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case signup:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case emailVerification:
        return MaterialPageRoute(
          builder: (_) => const EmailVerificationScreen(),
        );
      case dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      case wallets:
        return MaterialPageRoute(
          builder: (_) => const WalletsScreen(),
        );
      case addWallet:
        return MaterialPageRoute(
          builder: (_) => const AddWalletScreen(),
        );
      case editWallet:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => EditWalletScreen(walletId: args?['walletId']),
        );
      case transactions:
        return MaterialPageRoute(
          builder: (_) => const TransactionsScreen(),
        );
      case addTransaction:
        return MaterialPageRoute(
          builder: (_) => const AddTransactionScreen(),
        );
      case editTransaction:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => EditTransactionScreen(
            transactionId: args?['transactionId'],
          ),
        );
      case transactionDetails:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => TransactionDetailsScreen(
            transactionId: args?['transactionId'],
          ),
        );
      case loans:
        return MaterialPageRoute(
          builder: (_) => const LoansScreen(),
        );
      case addLoan:
        return MaterialPageRoute(
          builder: (_) => const AddLoanScreen(),
        );
      case loanDetails:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => LoanDetailsScreen(
            loanId: args?['loanId'],
          ),
        );
      case goals:
        return MaterialPageRoute(
          builder: (_) => const GoalsScreen(),
        );
      case addGoal:
        return MaterialPageRoute(
          builder: (_) => const AddGoalScreen(),
        );
      case goalDetails:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => GoalDetailsScreen(
            goalId: args?['goalId'],
          ),
        );
      case analytics:
        return MaterialPageRoute(
          builder: (_) => const AnalyticsScreen(),
        );
      case profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      case about:
        return MaterialPageRoute(
          builder: (_) => const AboutScreen(),
        );
      case privacyPolicy:
        return MaterialPageRoute(
          builder: (_) => const PrivacyPolicyScreen(),
        );
      case termsOfService:
        return MaterialPageRoute(
          builder: (_) => const TermsOfServiceScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}

// Placeholder screens (to be implemented in later phases)
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Splash')));
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Onboarding')));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Login')));
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Signup')));
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Forgot Password')));
}

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Email Verification')));
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Dashboard')));
}

class WalletsScreen extends StatelessWidget {
  const WalletsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Wallets')));
}

class AddWalletScreen extends StatelessWidget {
  const AddWalletScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Add Wallet')));
}

class EditWalletScreen extends StatelessWidget {
  final String? walletId;
  const EditWalletScreen({Key? key, this.walletId}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Edit Wallet')));
}

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Transactions')));
}

class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Add Transaction')));
}

class EditTransactionScreen extends StatelessWidget {
  final String? transactionId;
  const EditTransactionScreen({Key? key, this.transactionId}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Edit Transaction')));
}

class TransactionDetailsScreen extends StatelessWidget {
  final String? transactionId;
  const TransactionDetailsScreen({Key? key, this.transactionId}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Transaction Details')));
}

class LoansScreen extends StatelessWidget {
  const LoansScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Loans')));
}

class AddLoanScreen extends StatelessWidget {
  const AddLoanScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Add Loan')));
}

class LoanDetailsScreen extends StatelessWidget {
  final String? loanId;
  const LoanDetailsScreen({Key? key, this.loanId}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Loan Details')));
}

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Goals')));
}

class AddGoalScreen extends StatelessWidget {
  const AddGoalScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Add Goal')));
}

class GoalDetailsScreen extends StatelessWidget {
  final String? goalId;
  const GoalDetailsScreen({Key? key, this.goalId}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Goal Details')));
}

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Analytics')));
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Profile')));
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Settings')));
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('About')));
}

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Privacy Policy')));
}

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Terms of Service')));
}
