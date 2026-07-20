// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'معرض تكنوبرنت';

  @override
  String get welcomeMessage => 'جاهزين نبدأ التصميم صفحة صفحة';

  @override
  String get language => 'اللغة';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get emailHint => 'أدخل بريدك الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get passwordHint => 'أدخل كلمة المرور';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get forgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get noAccount => 'معندكش حساب؟';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get orDivider => 'أو';

  @override
  String get continueWithGoogle => 'تسجيل الدخول بجوجل';
}
