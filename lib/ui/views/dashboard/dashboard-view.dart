import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_reservation/responsiveness/size-config.dart';
import 'package:food_reservation/ui/views/dashboard/dashboard-view-model.dart';
import 'package:food_reservation/widgets/header-button.dart';
import 'package:food_reservation/widgets/text-field.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<DashboardViewModel>.reactive(
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
                  Column(
                    children: [
                      Text(
                        'DELIVERING TO',
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(14.0)),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(5.0),
                      ),
                      Text(
                        'Noble Hou...',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                            22.0,
                          ),
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
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
                    hintText: 'Search Food',
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
              ),
              SizedBox(
                height: getProportionateScreenHeight(30.0),
              ),
              model.isBusy
                  ? Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : !model.hasError
                      ? Expanded(
                          flex: 12,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: model.data!.length,
                              itemBuilder: (context, index) => Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 3),
                                              color: Color(0x1A000000),
                                              blurRadius: 10.0,
                                            )
                                          ]),
                                      child: ListTile(
                                        leading: CircleAvatar(
                                            backgroundImage: NetworkImage(model
                                                .data![index].owner!.picture!)),
                                        title: Column(
                                          // mainAxisAlignment:
                                          // MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${model.data![index].owner!.firstName!} ${model.data![index].owner!.lastName!}',
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              '${model.data![index].owner!.email}',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        trailing: Text('Likes ' +
                                            model.data![index].likes
                                                .toString()),
                                      ),
                                    ),
                                  )),
                        )
                      : Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text(
                            model.error.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
              // FloatingActionButton(
              //   onPressed: () {},
              //   child: Icon(Icons.add),,
              // )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
