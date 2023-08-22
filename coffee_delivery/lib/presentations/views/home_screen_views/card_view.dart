
import 'package:coffee_delivery/presentations/screens.dart/detail_screen.dart';
import 'package:coffee_delivery/services/contants/colors.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String name;
  final String desc;
  final Image img;

  const CardPage(
      {super.key, required this.name, required this.desc, required this.img});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const DetailScreen()));
        },
        child: Container(
          height: 120,
          width: 311,
          decoration: const BoxDecoration(
              color: AppColor.cardCl,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(6),
                  bottomLeft: Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: img),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        "R\$9,90",
                        style: TextStyle(
                            color: Colors.amberAccent.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
