import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_reservation/responsiveness/size-config.dart';

class HeaderButton extends StatelessWidget {
  final String? iconPath;
  final Function()? tap;
  const HeaderButton({Key? key, this.iconPath, this.tap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: getProportionateScreenWidth(50.0),
        height: getProportionateScreenHeight(50.0),
        padding: EdgeInsets.all(
          getProportionateScreenWidth(
            12.0,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 20.0,
              color: Color(
                0x1A000000,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(
            25.0,
          ),
        ),
        child: Image.asset('$iconPath'),
      ),
    );
  }
}
