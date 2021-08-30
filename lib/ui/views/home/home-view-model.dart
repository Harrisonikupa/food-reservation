import 'package:flutter/material.dart';
import 'package:food_reservation/responsiveness/size-config.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends IndexTrackingViewModel {
  Widget homeIcon() {
    return Container(
      width: getProportionateScreenWidth(45.0),
      height: getProportionateScreenHeight(45.0),
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      decoration: BoxDecoration(
          color: currentIndex == 0 ? Color(0x99FBBB3D) : Colors.white,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(
            20.0,
          ))),
      child: Image.asset(
        'assets/icons/home.png',
      ),
    );
  }

  Widget discoverIcon() {
    return Container(
      width: getProportionateScreenWidth(45.0),
      height: getProportionateScreenHeight(45.0),
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      decoration: BoxDecoration(
          color: currentIndex == 1 ? Color(0x99FBBB3D) : Colors.white,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(
            20.0,
          ))),
      child: Image.asset(
        'assets/icons/discover.png',
        // color: currentIndex == 1 ? kcPrimaryColor : kcIconColor,
      ),
    );
  }

  Widget calendarIcon() {
    return Container(
      width: getProportionateScreenWidth(45.0),
      height: getProportionateScreenHeight(45.0),
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      decoration: BoxDecoration(
          color: currentIndex == 2 ? Color(0x99FBBB3D) : Colors.white,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(
            20.0,
          ))),
      child: Image.asset(
        'assets/icons/calendar.png',
        // color: currentIndex == 2 ? kcPrimaryColor : kcIconColor,
      ),
    );
  }

  Widget categoryIcon() {
    return Container(
      width: getProportionateScreenWidth(45.0),
      height: getProportionateScreenHeight(45.0),
      padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
      decoration: BoxDecoration(
          color: currentIndex == 3 ? Color(0x99FBBB3D) : Colors.white,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(
            20.0,
          ))),
      child: Image.asset(
        'assets/icons/category.png',
        // color: currentIndex == 3 ? kcPrimaryColor : kcIconColor,
      ),
    );
  }
}
