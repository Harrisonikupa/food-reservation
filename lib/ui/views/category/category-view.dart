import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_reservation/responsiveness/size-config.dart';
import 'package:food_reservation/ui/views/category/category-view-model.dart';
import 'package:food_reservation/widgets/header-button.dart';
import 'package:food_reservation/widgets/text-field.dart';
import 'package:stacked/stacked.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<CategoryViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(15.0)),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderButton(
                    iconPath: 'assets/icons/profile.png',
                    tap: () {},
                  ),
                  Text(
                    'Food Categories',
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(18.0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  HeaderButton(
                    iconPath: 'assets/icons/bag.png',
                    tap: () {},
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextInput(
                    hintText: 'Search Category',
                    // prefixIcon: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                  Container(
                    width: getProportionateScreenHeight(
                      46.0,
                    ),
                    height: getProportionateScreenHeight(
                      46.0,
                    ),
                    child: Image.asset(
                      'assets/icons/filter.png',
                    ),
                    padding: EdgeInsets.all(
                      getProportionateScreenWidth(
                        15.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(15.0))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => CategoryViewModel(),
    );
  }
}
