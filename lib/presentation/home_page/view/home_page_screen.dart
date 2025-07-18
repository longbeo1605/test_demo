import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ios/core/app/app_color.dart';
import 'package:test_ios/core/app/app_text_styles.dart';
import 'package:test_ios/core/common/enum.dart';
import 'package:test_ios/entities/business/work_order_model.dart';
import 'package:test_ios/generated/app_localizations.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color getStatusColor(WorkOrderStatus status) {
      switch (status) {
        case WorkOrderStatus.completed:
          return Colors.green;
        case WorkOrderStatus.pending:
          return Colors.orange;
        case WorkOrderStatus.inProgress:
          return Colors.blue;
        case WorkOrderStatus.cancelled:
          return Colors.red;
        case WorkOrderStatus.onHold:
          return Colors.grey;
      }
    }

    String getStatusText(BuildContext context, WorkOrderStatus status) {
      switch (status) {
        case WorkOrderStatus.completed:
          return AppLocalizations.of(context)!.statusCompleted;
        case WorkOrderStatus.pending:
          return AppLocalizations.of(context)!.statusPending;
        case WorkOrderStatus.inProgress:
          return AppLocalizations.of(context)!.statusInProgress;
        case WorkOrderStatus.cancelled:
          return AppLocalizations.of(context)!.statusCancelled;
        case WorkOrderStatus.onHold:
          return AppLocalizations.of(context)!.statusOnHold;
      }
    }

    final List<WorkOrderModel> orders = [
      WorkOrderModel(
        id: '#1000057129',
        status: WorkOrderStatus.completed,
        title: 'Pump Maintenance',
        plant: 'Plant A',
        email: 'anna.smith@gmail.com',
        datetime: '20/12/23 at 23:00:39',
      ),
      WorkOrderModel(
        id: '#1000057130',
        status: WorkOrderStatus.pending,
        title: 'Valve Inspection',
        plant: 'Plant B',
        email: 'john.doe@gmail.com',
        datetime: '21/12/23 at 11:15:20',
      ),
      WorkOrderModel(
        id: '#1000057131',
        status: WorkOrderStatus.inProgress,
        title: 'Line Check',
        plant: 'Plant C',
        email: 'emily.rose@gmail.com',
        datetime: '22/12/23 at 17:35:47',
      ),
      WorkOrderModel(
        id: '#1000057132',
        status: WorkOrderStatus.cancelled,
        title: 'Tank Cleaning',
        plant: 'Plant D',
        email: 'tom.lewis@gmail.com',
        datetime: '23/12/23 at 09:22:10',
      ),
      WorkOrderModel(
        id: '#1000057133',
        status: WorkOrderStatus.onHold,
        title: 'Boiler Repair',
        plant: 'Plant E',
        email: 'lucy.nguyen@gmail.com',
        datetime: '24/12/23 at 14:45:02',
      ),
    ];


    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        centerTitle: false,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 16.w, bottom: 12.h, top: 8.h),
          child: Text(
            AppLocalizations.of(context)!.workOrder,
            style: AppTextStyles.s24Bold.copyWith(
              color: Colors.white,
              fontSize: 26.sp,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 18.h, bottom: 18.h),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final item = orders[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 13.w, vertical: 8.h),
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row: ID + Status
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        orders[index].id,
                        style: AppTextStyles.s16Bold.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.textTitle,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
                      decoration: BoxDecoration(
                        color: getStatusColor(orders[index].status),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        getStatusText(context, orders[index].status),
                        style: AppTextStyles.s14Regular.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),

                Text(
                  orders[index].title,
                  style: AppTextStyles.s16Bold.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textTitle,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  orders[index].plant,
                  style: AppTextStyles.s14Regular
                      .copyWith(color: AppColors.textSub),
                ),

                SizedBox(height: 14.h),
                Divider(
                  color: AppColors.divider,
                  height: 1.h,
                ),

                // Email + Datetime
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          orders[index].email,
                          style: AppTextStyles.s14Regular.copyWith(
                            color: AppColors.textSub,
                          ),
                        ),
                      ),
                      Text(
                        orders[index].datetime,
                        style: AppTextStyles.s14Regular.copyWith(
                          fontSize: 13.sp,
                          color: AppColors.textSub.withOpacity(0.90),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
