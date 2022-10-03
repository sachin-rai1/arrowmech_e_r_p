part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const LEAD = _Paths.LEAD;
  static const SALES = _Paths.SALES;
  static const REFERENCE = _Paths.REFERENCE;
  static const TRIP = _Paths.TRIP;
  static const TARGET = _Paths.TARGET;
  static const REPORT = _Paths.REPORT;
  static const DAILY_SALES_REPORT = _Paths.DAILY_SALES_REPORT;
  static const MONTHLY_SALES_TARGET = _Paths.MONTHLY_SALES_TARGET;
  static const COMPANY_WISE_TARGET = _Paths.COMPANY_WISE_TARGET;
  static const TASK_LIST = _Paths.TASK_LIST;
  static const PRO_REFERENCE = _Paths.PRO_REFERENCE;
  static const SERVICE_TASK_LIST = _Paths.SERVICE_TASK_LIST;
  static const SERVICE_TRIP = _Paths.SERVICE_TRIP;
  static const SERVICE_REFERENCE = _Paths.SERVICE_REFERENCE;
  static const PRO_TASK_LIST = _Paths.PRO_TASK_LIST;
  static const MANAGER_STOCK_ITEM = _Paths.MANAGER_STOCK_ITEM;
  static const MANAGER_VENDORS = _Paths.MANAGER_VENDORS;
  static const MANAGER_LOW_ITEM_STOCK = _Paths.MANAGER_LOW_ITEM_STOCK;
  static const MANAGE_SALES = _Paths.MANAGE_SALES;
  static const MANAGE_PRODUCTION = _Paths.MANAGE_PRODUCTION;
  static const MANAGE_SERVICE = _Paths.MANAGE_SERVICE;
  static const MANAGE_DASH_BOARD = _Paths.MANAGE_DASH_BOARD;
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const ADMIN_DASH_BOARD = _Paths.ADMIN_DASH_BOARD;
  static const ADMIN_SALES = _Paths.ADMIN_SALES;
  static const ADMIN_PRODUCTION = _Paths.ADMIN_PRODUCTION;
  static const ADMIN_SERVICE = _Paths.ADMIN_SERVICE;
  static const ADMIN_REFERENCE = _Paths.ADMIN_REFERENCE;
  static const SWITCH_USER = _Paths.SWITCH_USER;
  static const ADMIN_MANAGER = _Paths.ADMIN_MANAGER;
  static const ADMIN_SALES_REPORT = _Paths.ADMIN_SALES_REPORT;
  static const ADMIN_SALES_TARGET = _Paths.ADMIN_SALES_TARGET;
  static const ADMIN_SALES_REPORT_DATE_WISE =
      _Paths.ADMIN_SALES_REPORT + _Paths.ADMIN_SALES_REPORT_DATE_WISE;
  static const ADMIN_MONTHLY_TARGET =
      _Paths.ADMIN_SALES_TARGET + _Paths.ADMIN_MONTHLY_TARGET;
  static const ADMIN_COMPANY_WISE_TARGET =
      _Paths.ADMIN_SALES_TARGET + _Paths.ADMIN_COMPANY_WISE_TARGET;
  static const ADMIN_TASK_ALLOCATION =
      _Paths.ADMIN_MANAGER + _Paths.ADMIN_TASK_ALLOCATION;
  static const ADMIN_STOCK_ITEM =
      _Paths.ADMIN_MANAGER + _Paths.ADMIN_STOCK_ITEM;
  static const ADMIN_LOW_STOCK_ITEM =
       _Paths.ADMIN_MANAGER + _Paths.ADMIN_LOW_STOCK_ITEM;
  static const ADMIN_VENDORS =
       _Paths.ADMIN_MANAGER + _Paths.ADMIN_VENDORS;
}

abstract class _Paths {
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const LEAD = '/lead';
  static const SALES = '/sales';
  static const REFERENCE = '/reference';
  static const TRIP = '/trip';
  static const TARGET = '/target';
  static const REPORT = '/report';
  static const DAILY_SALES_REPORT = '/daily-sales-report';
  static const MONTHLY_SALES_TARGET = '/monthly-sales-target';
  static const COMPANY_WISE_TARGET = '/company-wise-target';
  static const TASK_LIST = '/task-list';
  static const PRO_REFERENCE = '/pro-reference';
  static const SERVICE_TASK_LIST = '/service-task-list';
  static const SERVICE_TRIP = '/service-trip';
  static const SERVICE_REFERENCE = '/service-reference';
  static const PRO_TASK_LIST = '/pro-task-list';
  static const MANAGER_STOCK_ITEM = '/manager-stock-item';
  static const MANAGER_VENDORS = '/manager-vendors';
  static const MANAGER_LOW_ITEM_STOCK = '/manager-low-item-stock';
  static const MANAGE_SALES = '/manage-sales';
  static const MANAGE_PRODUCTION = '/manage-production';
  static const MANAGE_SERVICE = '/manage-service';
  static const MANAGE_DASH_BOARD = '/manage-dash-board';
  static const SPLASH_SCREEN = '/splash-screen';
  static const ADMIN_DASH_BOARD = '/admin-dash-board';
  static const ADMIN_SALES = '/admin-sales';
  static const ADMIN_PRODUCTION = '/admin-production';
  static const ADMIN_SERVICE = '/admin-service';
  static const ADMIN_REFERENCE = '/admin-reference';
  static const SWITCH_USER = '/switch-user';
  static const ADMIN_MANAGER = '/admin-manager';
  static const ADMIN_SALES_REPORT = '/admin-sales-report';
  static const ADMIN_SALES_TARGET = '/admin-sales-target';
  static const ADMIN_SALES_REPORT_DATE_WISE = '/admin-sales-report-date-wise';
  static const ADMIN_MONTHLY_TARGET = '/admin-monthly-target';
  static const ADMIN_COMPANY_WISE_TARGET = '/admin-company-wise-target';
  static const ADMIN_TASK_ALLOCATION = '/admin-task-allocation';
  static const ADMIN_STOCK_ITEM = '/admin-stock-item';
  static const ADMIN_LOW_STOCK_ITEM = '/admin-low-stock-item';
  static const ADMIN_VENDORS = '/admin-vendors';
}
