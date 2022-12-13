import 'package:flutter/material.dart';
import 'package:receip_app/model/menu.dart';
import 'package:receip_app/screens/theme.dart';
import 'package:receip_app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Eric',
                style: poppinsTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              Text(
                'Coffe with something different from Malang',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: greyColor,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Ours Product',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ProductCard(Menu(
                  id: 1,
                  image: 'assets/images/Coffe1.png',
                  name: 'Bulukerto',
                  price: 28000,
                  note: 'Coffe khas bulukerto dengan citarasa unik')),
              SizedBox(
                height: 20,
              ),
              ProductCard(Menu(
                  id: 2,
                  image: 'assets/images/Kawi.png',
                  name: 'Kawi',
                  price: 40000,
                  note: 'Coffe khas dari daerah Kawi, oleh pentani asal Kawi')),
              SizedBox(
                height: 20,
              ),
              ProductCard(Menu(
                  id: 3,
                  image: 'assets/images/hand_sanitizer.png',
                  name: 'Hand Sanitizer',
                  price: 10000,
                  note: 'Hand Sanitizer dengan aroma coffe khas povero')),
            ],
          ),
        ),
      ),
    );
  }
}
