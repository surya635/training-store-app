import 'package:flutter/material.dart';
import 'package:receip_app/screens/detail_screen.dart';
import '../model/menu.dart';
import '../screens/theme.dart';

class ProductCard extends StatelessWidget {
  final Menu menu;
  ProductCard(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.image,
              width: 130,
              height: 110,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.name}',
                  style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Rp ${menu.price}',
                  style: poppinsTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
