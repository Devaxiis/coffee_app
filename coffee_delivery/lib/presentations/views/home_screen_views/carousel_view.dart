
import 'package:coffee_delivery/services/contants/colors.dart';
import 'package:coffee_delivery/services/contants/strings.dart';
import 'package:flutter/material.dart';

class StakWidget extends StatefulWidget {
  const StakWidget({super.key});

  @override
  State<StakWidget> createState() => _StakWidgetState();
}

class _StakWidgetState extends State<StakWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, top: 230),
      child: Container(
        height: 260,
        width: 200,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
            color: AppColor.cardCl,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(6),
                bottomLeft: Radius.circular(50))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.scale(
                scale: 1.5,
                child: const Image(
                  image: AssetImage('assets/images/img_cubano.png'),
                  height: 80,
                  width: 80,
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 20,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(.20),
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              child: Text(
                StringText.tradicionalTx,
                style: TextStyle(fontSize: 13, color: Colors.blue.shade900),
              ),
            ),
            const Spacer(),
            const Text(
              StringText.expresso_americanoTx,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Text(
              StringText.expresso_americano_descTx,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Text(
              "R\$9,90",
              style: TextStyle(
                  color: Colors.amberAccent.shade700,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}