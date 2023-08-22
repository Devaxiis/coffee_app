import 'package:flutter/material.dart';

class BuyurtmaRasmuylashgtirish extends StatelessWidget {
  const BuyurtmaRasmuylashgtirish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            const Image(image: AssetImage("assets/icons/ic_deliver.png")),
            const Spacer(),
            const Text(
              "Huh! tasdiqlangan buyurtma",
              style: TextStyle(
                  color: Color(0xffC47F17),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Text(
              "Endi kofe sizga tez orada kelishini kuting!",
              style: TextStyle(
                color: Color(0xff403937),
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Container(
              height: 46,
              alignment: Alignment.center,
              width: MediaQuery.sizeOf(context).width / 1.2,
              decoration: const BoxDecoration(
                  color: Color(0xff4B2995),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: const Text(
                "Uyga keltirish",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
