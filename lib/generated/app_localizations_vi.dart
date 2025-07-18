// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get home => 'Trang chủ';

  @override
  String get profile => 'Cá nhân';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get save => 'Lưu';

  @override
  String get logOut => 'Đăng xuất';

  @override
  String get workOrder => 'Lệnh Làm Việc';

  @override
  String get status => 'Trạng thái';

  @override
  String get statusCompleted => 'Hoàn thành';

  @override
  String get statusPending => 'Chờ xử lý';

  @override
  String get statusInProgress => 'Đang thực hiện';

  @override
  String get statusCancelled => 'Đã huỷ';

  @override
  String get statusOnHold => 'Tạm dừng';

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get errorSignIn => 'Sai tên đăng nhập hoặc mật khẩu!!';

  @override
  String get requiredUsername => 'Yêu cầu nhập username!!';

  @override
  String get requiredPassword => 'Yêu cầu nhập mật khẩu!!';
}
