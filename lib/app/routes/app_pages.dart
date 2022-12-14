import 'package:arrowmech_e_r_p/app/data/notificationService.dart';
import 'package:flutter/animation.dart';

import 'package:get/get.dart';

import '../modules/Admin/AdminDashBoard/bindings/admin_dash_board_binding.dart';
import '../modules/Admin/AdminDashBoard/views/admin_dash_board_view.dart';
import '../modules/Admin/AdminManager/AdminLowStockItem/bindings/admin_low_stock_item_binding.dart';
import '../modules/Admin/AdminManager/AdminLowStockItem/views/admin_low_stock_item_view.dart';
import '../modules/Admin/AdminManager/AdminStockItem/bindings/admin_stock_item_binding.dart';
import '../modules/Admin/AdminManager/AdminStockItem/views/admin_stock_item_view.dart';
import '../modules/Admin/AdminManager/AdminTaskAllocation/bindings/admin_task_allocation_binding.dart';
import '../modules/Admin/AdminManager/AdminTaskAllocation/views/admin_task_allocation_view.dart';
import '../modules/Admin/AdminManager/AdminVendors/bindings/admin_vendors_binding.dart';
import '../modules/Admin/AdminManager/AdminVendors/views/admin_vendors_view.dart';
import '../modules/Admin/AdminManager/bindings/admin_manager_binding.dart';
import '../modules/Admin/AdminManager/views/admin_manager_view.dart';
import '../modules/Admin/AdminProduction/bindings/admin_production_binding.dart';
import '../modules/Admin/AdminProduction/views/admin_production_view.dart';
import '../modules/Admin/AdminReference/bindings/admin_reference_binding.dart';
import '../modules/Admin/AdminReference/views/admin_reference_view.dart';
import '../modules/Admin/AdminSalesReport/AdminSalesReportDateWise/bindings/admin_sales_report_date_wise_binding.dart';
import '../modules/Admin/AdminSalesReport/AdminSalesReportDateWise/views/admin_sales_report_date_wise_view.dart';
import '../modules/Admin/AdminSalesReport/bindings/admin_sales_report_binding.dart';
import '../modules/Admin/AdminSalesReport/views/admin_sales_report_view.dart';
import '../modules/Admin/AdminSalesTarget/AdminCompanyWiseTarget/bindings/admin_company_wise_target_binding.dart';
import '../modules/Admin/AdminSalesTarget/AdminCompanyWiseTarget/views/admin_company_wise_target_view.dart';
import '../modules/Admin/AdminSalesTarget/AdminMonthlyTarget/bindings/admin_monthly_target_binding.dart';
import '../modules/Admin/AdminSalesTarget/AdminMonthlyTarget/views/admin_monthly_target_view.dart';
import '../modules/Admin/AdminSalesTarget/bindings/admin_sales_target_binding.dart';
import '../modules/Admin/AdminSalesTarget/views/admin_sales_target_view.dart';
import '../modules/Admin/AdminService/bindings/admin_service_binding.dart';
import '../modules/Admin/AdminService/views/admin_service_view.dart';
import '../modules/Manager/ManageDashBoard/bindings/manage_dash_board_binding.dart';
import '../modules/Manager/ManageDashBoard/views/manage_dash_board_view.dart';
import '../modules/Manager/ManageProduction/bindings/manage_production_binding.dart';
import '../modules/Manager/ManageProduction/views/manage_production_view.dart';
import '../modules/Manager/ManageSales/bindings/manage_sales_binding.dart';
import '../modules/Manager/ManageSales/views/manage_sales_view.dart';
import '../modules/Manager/ManageService/bindings/manage_service_binding.dart';
import '../modules/Manager/ManageService/views/manage_service_view.dart';
import '../modules/Manager/ManagerLowItemStock/bindings/manager_low_item_stock_binding.dart';
import '../modules/Manager/ManagerLowItemStock/views/manager_low_item_stock_view.dart';
import '../modules/Manager/ManagerStockItem/bindings/manager_stock_item_binding.dart';
import '../modules/Manager/ManagerStockItem/views/manager_stock_item_view.dart';
import '../modules/Manager/ManagerVendors/bindings/manager_vendors_binding.dart';
import '../modules/Manager/ManagerVendors/views/manager_vendors_view.dart';
import '../modules/Production/ProReference/bindings/pro_reference_binding.dart';
import '../modules/Production/ProReference/views/pro_reference_view.dart';
import '../modules/Production/ProTaskList/bindings/pro_task_list_binding.dart';
import '../modules/Production/ProTaskList/views/pro_task_list_view.dart';
import '../modules/Sales/Reference/bindings/reference_binding.dart';
import '../modules/Sales/Reference/views/reference_view.dart';
import '../modules/Sales/lead/bindings/lead_binding.dart';
import '../modules/Sales/lead/views/lead_view.dart';
import '../modules/Sales/report/SalesReportDateWise/bindings/daily_sales_report_binding.dart';
import '../modules/Sales/report/SalesReportDateWise/views/daily_sales_report_view.dart';
import '../modules/Sales/report/bindings/report_binding.dart';
import '../modules/Sales/report/views/report_view.dart';
import '../modules/Sales/target/CompanyWiseTarget/bindings/company_wise_target_binding.dart';
import '../modules/Sales/target/CompanyWiseTarget/views/company_wise_target_view.dart';
import '../modules/Sales/target/MonthlySalesTarget/bindings/monthly_sales_target_binding.dart';
import '../modules/Sales/target/MonthlySalesTarget/views/monthly_sales_target_view.dart';
import '../modules/Sales/target/bindings/target_binding.dart';
import '../modules/Sales/target/views/target_view.dart';
import '../modules/Sales/trip/bindings/trip_binding.dart';
import '../modules/Sales/trip/views/trip_view.dart';
import '../modules/Service/ServiceReference/bindings/service_reference_binding.dart';
import '../modules/Service/ServiceReference/views/service_reference_view.dart';
import '../modules/Service/ServiceTaskList/bindings/service_task_list_binding.dart';
import '../modules/Service/ServiceTaskList/views/service_task_list_view.dart';
import '../modules/Service/ServiceTrip/bindings/service_trip_binding.dart';
import '../modules/Service/ServiceTrip/views/service_trip_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/SwitchUser/bindings/switch_user_binding.dart';
import '../modules/SwitchUser/views/switch_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),

    GetPage(
      name: _Paths.LEAD,
      page: () => LeadView(),
      binding: LeadBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),
    GetPage(
      name: _Paths.REFERENCE,
      page: () => ReferenceView(),
      binding: ReferenceBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),
    GetPage(
      name: _Paths.TRIP,
      page: () => TripView(),
      binding: TripBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),
    GetPage(
      name: _Paths.TARGET,
      page: () => TargetView(),
      binding: TargetBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => ReportView(),
      binding: ReportBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),
    GetPage(
      name: _Paths.DAILY_SALES_REPORT,
      page: () => DailySalesReportView(),
      binding: DailySalesReportBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      curve: Curves.linear,
      popGesture: true,
    ),
    GetPage(
      name: _Paths.MONTHLY_SALES_TARGET,
      page: () => MonthlySalesTargetView(),
      binding: MonthlySalesTargetBinding(),
    ),
    GetPage(
      name: _Paths.COMPANY_WISE_TARGET,
      page: () => CompanyWiseTargetView(),
      binding: CompanyWiseTargetBinding(),
    ),
    GetPage(
      name: _Paths.PRO_REFERENCE,
      page: () => ProReferenceView(),
      binding: ProReferenceBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_TASK_LIST,
      page: () => ServiceTaskListView(),
      binding: ServiceTaskListBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_TRIP,
      page: () => ServiceTripView(),
      binding: ServiceTripBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_REFERENCE,
      page: () => ServiceReferenceView(),
      binding: ServiceReferenceBinding(),
    ),
    GetPage(
      name: _Paths.PRO_TASK_LIST,
      page: () => ProTaskListView(),
      binding: ProTaskListBinding(),
    ),
    GetPage(
      name: _Paths.MANAGER_STOCK_ITEM,
      page: () => ManagerStockItemView(),
      binding: ManagerStockItemBinding(),
    ),
    GetPage(
      name: _Paths.MANAGER_VENDORS,
      page: () => ManagerVendorsView(),
      binding: ManagerVendorsBinding(),
    ),
    GetPage(
      name: _Paths.MANAGER_LOW_ITEM_STOCK,
      page: () => ManagerLowItemStockView(),
      binding: ManagerLowItemStockBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_SALES,
      page: () => ManageSalesView(),
      binding: ManageSalesBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_PRODUCTION,
      page: () => ManageProductionView(),
      binding: ManageProductionBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_SERVICE,
      page: () => ManageServiceView(),
      binding: ManageServiceBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_DASH_BOARD,
      page: () => ManageDashBoardView(),
      binding: ManageDashBoardBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_DASH_BOARD,
      page: () => AdminDashBoardView(),
      binding: AdminDashBoardBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_PRODUCTION,
      page: () => AdminProductionView(),
      binding: AdminProductionBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_SERVICE,
      page: () => AdminServiceView(),
      binding: AdminServiceBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_REFERENCE,
      page: () => AdminReferenceView(),
      binding: AdminReferenceBinding(),
    ),
    GetPage(
      name: _Paths.SWITCH_USER,
      page: () => SwitchUserView(),
      binding: SwitchUserBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_MANAGER,
      page: () => AdminManagerView(),
      binding: AdminManagerBinding(),
      children: [
        GetPage(
          name: _Paths.ADMIN_TASK_ALLOCATION,
          page: () => AdminTaskAllocationView(),
          binding: AdminTaskAllocationBinding(),
        ),
        GetPage(
          name: _Paths.ADMIN_STOCK_ITEM,
          page: () => AdminStockItemView(),
          binding: AdminStockItemBinding(),
        ),
        GetPage(
          name: _Paths.ADMIN_LOW_STOCK_ITEM,
          page: () => AdminLowStockItemView(),
          binding: AdminLowStockItemBinding(),
        ),
        GetPage(
          name: _Paths.ADMIN_VENDORS,
          page: () => AdminVendorsView(),
          binding: AdminVendorsBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ADMIN_SALES_REPORT,
      page: () => AdminSalesReportView(),
      binding: AdminSalesReportBinding(),
      children: [
        GetPage(
          name: _Paths.ADMIN_SALES_REPORT_DATE_WISE,
          page: () => AdminSalesReportDateWiseView(),
          binding: AdminSalesReportDateWiseBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ADMIN_SALES_TARGET,
      page: () => AdminSalesTargetView(),
      binding: AdminSalesTargetBinding(),
      children: [
        GetPage(
          name: _Paths.ADMIN_MONTHLY_TARGET,
          page: () => AdminMonthlyTargetView(),
          binding: AdminMonthlyTargetBinding(),
        ),
        GetPage(
          name: _Paths.ADMIN_COMPANY_WISE_TARGET,
          page: () => AdminCompanyWiseTargetView(),
          binding: AdminCompanyWiseTargetBinding(),
        ),
      ],
    ),
  ];
}
