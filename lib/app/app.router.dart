// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/calendar/calendar-view.dart';
import '../ui/views/category/category-view.dart';
import '../ui/views/dashboard/dashboard-view.dart';
import '../ui/views/discover/discover-view.dart';
import '../ui/views/home/home-view.dart';

class Routes {
  static const String homeView = '/';
  static const String dashboardView = '/dashboard-view';
  static const String discoverView = '/discover-view';
  static const String calendarView = '/calendar-view';
  static const String categoryView = '/category-view';
  static const all = <String>{
    homeView,
    dashboardView,
    discoverView,
    calendarView,
    categoryView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.dashboardView, page: DashboardView),
    RouteDef(Routes.discoverView, page: DiscoverView),
    RouteDef(Routes.calendarView, page: CalendarView),
    RouteDef(Routes.categoryView, page: CategoryView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DashboardView(),
        settings: data,
      );
    },
    DiscoverView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DiscoverView(),
        settings: data,
      );
    },
    CalendarView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CalendarView(),
        settings: data,
      );
    },
    CategoryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CategoryView(),
        settings: data,
      );
    },
  };
}
