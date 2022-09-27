import 'package:flutter/animation.dart';

import 'package:get/get.dart';

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
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

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
  ];
}
