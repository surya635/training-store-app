import 'package:flutter/material.dart';
import 'package:receip_app/screens/theme.dart';
import 'package:receip_app/model/size.dart';

class SizeCard extends StatelessWidget {
  final Size size;
  SizeCard(this.size);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: size.isActive
          ? Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: greyColor,
                  width: 1.5,
                ),
              ),
              child: Text(
                size.name,
                style: poppinsTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: greyColor,
                  width: 1.5,
                ),
              ),
              child: Text(
                size.name,
                style: poppinsTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
    );
  }
}
