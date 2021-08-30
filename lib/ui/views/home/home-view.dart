import 'package:flutter/material.dart';
import 'package:food_reservation/responsiveness/size-config.dart';
import 'package:food_reservation/ui/views/calendar/calendar-view.dart';
import 'package:food_reservation/ui/views/category/category-view.dart';
import 'package:food_reservation/ui/views/dashboard/dashboard-view.dart';
import 'package:food_reservation/ui/views/discover/discover-view.dart';
import 'package:food_reservation/ui/views/home/home-view-model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: getViewForIndex(model.currentIndex),
        extendBody: true,
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(getProportionateScreenWidth(5.0)),
          height: getProportionateScreenHeight(80.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(20.0),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    color: Color(0x1A000000),
                    blurRadius: 20.0)
              ]),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 0.0,
            currentIndex: model.currentIndex,
            backgroundColor: Colors.transparent,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: model.homeIcon(),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: model.discoverIcon(),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: model.calendarIcon(),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: model.categoryIcon(),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return DashboardView();
      case 1:
        return DiscoverView();
      case 2:
        return CalendarView();
      case 3:
        return CategoryView();
      default:
        return DashboardView();
    }
  }
}
