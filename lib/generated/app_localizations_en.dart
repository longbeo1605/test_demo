// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home => 'Home';

  @override
  String get profile => 'Profile';

  @override
  String get language => 'Language';

  @override
  String get save => 'Save';

  @override
  String get logOut => 'Log out';

  @override
  String get workOrder => 'Work Orders';

  @override
  String get status => 'Status here';

  @override
  String get statusCompleted => 'Completed';

  @override
  String get statusPending => 'Pending';

  @override
  String get statusInProgress => 'In Progress';

  @override
  String get statusCancelled => 'Cancelled';

  @override
  String get statusOnHold => 'On Hold';

  @override
  String get signIn => 'Sign In';

  @override
  String get errorSignIn => 'Username or Password is not correct!!';

  @override
  String get requiredUsername => 'Username is required!!';

  @override
  String get requiredPassword => 'Password is required!!';
}
