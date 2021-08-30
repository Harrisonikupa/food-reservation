import 'package:food_reservation/shared/apis/post-api.dart';
import 'package:food_reservation/shared/services/post-service.dart';
import 'package:food_reservation/ui/views/calendar/calendar-view.dart';
import 'package:food_reservation/ui/views/category/category-view.dart';
import 'package:food_reservation/ui/views/dashboard/dashboard-view.dart';
import 'package:food_reservation/ui/views/discover/discover-view.dart';
import 'package:food_reservation/ui/views/home/home-view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: DiscoverView),
    MaterialRoute(page: CalendarView),
    MaterialRoute(page: CategoryView),
  ],
  dependencies: [
    LazySingleton(
      classType: NavigationService,
    ),
    LazySingleton(classType: PostApi),
    LazySingleton(classType: PostService),
    LazySingleton(classType: DialogService)
  ],
)
class AppSetup {}
