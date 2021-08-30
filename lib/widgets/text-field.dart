import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_reservation/responsiveness/size-config.dart';

class TextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? prefixIcon;
  const TextInput({Key? key, this.controller, this.hintText, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: getProportionateScreenWidth(280.0),
      height: getProportionateScreenHeight(46.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(15.0),
        ),
        color: Color(
          0xFFF8F8F8,
        ),
      ),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: getProportionateScreenHeight(16.0),
          fontStyle: FontStyle.normal,
        ),
        cursorHeight: getProportionateScreenHeight(
          18.0,
        ),
        cursorColor: Color(0x99FBBB3D),
        showCursor: true,
        decoration: new InputDecoration(
            fillColor: Colors.white,
            hintText: hintText != null ? hintText : '',
            hintStyle: TextStyle(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF8F8F8), width: 1.0),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(15.0))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF8F8F8),
                  width: getProportionateScreenWidth(1.0),
                ),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(15.0))),
            contentPadding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(5.0),
                horizontal: getProportionateScreenWidth(10.0)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              // borderSide: new BorderSide(color: Colors.red, width: 4.0),
            ),
            prefixIcon: prefixIcon),
        controller: controller,

        // #4a: Set the controller on the intended text field
        // controller: emailController,
      ),
    );
  }
}
