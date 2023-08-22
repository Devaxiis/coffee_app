import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_delivery/presentations/screens.dart/detail_screen.dart';
import 'package:coffee_delivery/presentations/views/home_screen_views/card_view.dart';
import 'package:coffee_delivery/presentations/views/home_screen_views/carousel_view.dart';
import 'package:coffee_delivery/services/contants/colors.dart';
import 'package:coffee_delivery/services/contants/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final control = CarouselController();

  final List CardList = [
    const StakWidget(),
    const StakWidget(),
    const StakWidget(),
    const StakWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.backgrounIkkiCl,
      body: SingleChildScrollView(
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: w,
                    padding: const EdgeInsets.all(30),
                    color: AppColor.backgrounCl,
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Image(
                              image: AssetImage("assets/icons/ic_location.png"),
                              color: AppColor.iconCl,
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              StringText.locationTx,
                              style: TextStyle(
                                  color: AppColor.backgrounIkkiCl,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Image(
                              image: AssetImage("assets/icons/ic_shop.png"),
                              color: AppColor.seleIcCl,
                              height: 20,
                              width: 20,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          StringText.coffeeTx,
                          style: TextStyle(
                              color: AppColor.backgrounIkkiCl,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.grey,
                              ),
                              hintText: StringText.pesquisarTx,
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(11))),
                              filled: true,
                              fillColor: AppColor.textlastCl.withOpacity(0.20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      initialPage: 0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      enlargeFactor: .25,
                      aspectRatio: 1.5 / 2,
                      enlargeStrategy: CenterPageEnlargeStrategy.height
                    ),
                    items: CardList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return const StakWidget();
                        },
                      );
                    }).toList(),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  StringText.nossosTx,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 28,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: const Text("CONTRADICTIONS"),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 28,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: const Text("DOCES"),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 28,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.blue)),
                      child: const Text("ECPECIALS"),
                    )
                  ],
                ),
              ),

              //-----Begin cards widget-----//
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "TRADICIONAILS",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardPage(
                name: StringText.expresso_americanoTx,
                desc: StringText.expresso_americano_descTx,
                img: Image(
                  image: AssetImage("assets/images/img_cubano.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardPage(
                name: StringText.expresso_americanoTx,
                desc: StringText.expresso_americano_descTx,
                img: Image(
                  image: AssetImage("assets/images/img_espresso_americano.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "DOCES",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardPage(
                name: StringText.expresso_americanoTx,
                desc: StringText.expresso_americano_descTx,
                img: Image(
                  image: AssetImage("assets/images/img_espresso_cremoco.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardPage(
                name: StringText.expresso_americanoTx,
                desc: StringText.expresso_americano_descTx,
                img: Image(
                  image: AssetImage("assets/images/img_espresso_gelado.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "ECPECIALS",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardPage(
                name: StringText.expresso_americanoTx,
                desc: StringText.expresso_americano_descTx,
                img: Image(
                  image: AssetImage("assets/images/img_espresso_tradico.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardPage(
                name: StringText.expresso_americanoTx,
                desc: StringText.expresso_americano_descTx,
                img: Image(
                  image: AssetImage("assets/images/img_espresso_tradico.png"),
                ),
              ),
            ],
          )),
    ));
  }
}

