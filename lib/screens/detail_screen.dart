import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:intl/intl.dart';
import 'package:receip_app/screens/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/size_card.dart';
import 'package:receip_app/model/size.dart';

class DetailScreen extends StatefulWidget {
  State<DetailScreen> createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  //const DetailScreen({Key? key}) : super(key: key);

  int dataPrice = 28000;

  int price = 0;

  int i = 1;
  bool isSachet = true;
  bool isMedium = false;
  bool isLarge = false;

  void _minus() {
    if (i > 1) {
      setState(() {
        i--;

        if (isSachet == true) {
          price = dataPrice * i;
        } else if (isMedium == true) {
          price = (dataPrice + 5000) * i;
        } else if (isLarge == true) {
          price = (dataPrice + 3000) * i;
        }
      });
    }
  }

  void _plus() {
    setState(() {
      i++;
      if (isSachet == true) {
        price = dataPrice * i;
      } else if (isMedium == true) {
        price = (dataPrice + 5000) * i;
      } else if (isLarge == true) {
        price = (dataPrice + 3000) * i;
      }
    });
  }

  void _clickSachet() {
    setState(() {
      price = dataPrice * i;
      isSachet = true;
      isMedium = false;
      isLarge = false;
    });
  }

  void _clickMedium() {
    setState(() {
      price = (dataPrice + 5000) * i;
      isSachet = false;
      isMedium = true;
      isLarge = false;
    });
  }

  void _clickLarge() {
    setState(() {
      price = (dataPrice + 3000) * i;
      isSachet = false;
      isMedium = false;
      isLarge = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      launch(url);
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Coffe1.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(IconlyLight.arrowLeft),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 300,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Bulukerto Coffe',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: _minus,
                                  child: Image.asset(
                                    'assets/images/minus.png',
                                    width: 34,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  '${i}',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                InkWell(
                                  onTap: _plus,
                                  child: Image.asset(
                                    'assets/images/plus.png',
                                    width: 34,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: 'Rp ',
                                decimalDigits: 0,
                              ).format(price),
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Pilih Ukuran',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: _clickSachet,
                                  child: SizeCard(
                                    Size(
                                        id: 1,
                                        name: 'sachet',
                                        isActive: isSachet),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                InkWell(
                                  onTap: _clickMedium,
                                  child: SizeCard(
                                    Size(
                                        id: 2,
                                        name: 'Medium',
                                        isActive: isMedium),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                InkWell(
                                  onTap: _clickLarge,
                                  child: SizeCard(
                                    Size(
                                        id: 1,
                                        name: 'Large',
                                        isActive: isLarge),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Deskripsi',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Coffe khas bulukerto dengan citarasa unik',
                                style: poppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lokasi Poverro',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    "https://goo.gl/maps/RnfPySADszoAMaRq5");
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Jl. Rawa No.5, Bunulrejo\n Malang, Jawa Timur',
                                    style: poppinsTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: greyColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      onPressed: () {
                                        launchUrl(
                                            'https://wa.me/6285647543624?text=Saya%20beli%20BulukertoCoffe%20$i%20');
                                      },
                                      child: Text(
                                        "buy",
                                        style: poppinsTextStyle.copyWith(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
