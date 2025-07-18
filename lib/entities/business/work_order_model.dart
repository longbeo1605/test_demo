import 'package:test_ios/core/common/enum.dart';

class WorkOrderModel {
  final String id;
  final WorkOrderStatus status;
  final String title;
  final String plant;
  final String email;
  final String datetime;

  WorkOrderModel({
    required this.id,
    required this.status,
    required this.title,
    required this.plant,
    required this.email,
    required this.datetime,
  });
}
