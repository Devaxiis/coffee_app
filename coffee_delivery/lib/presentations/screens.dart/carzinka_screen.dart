import 'package:coffee_delivery/presentations/screens.dart/buyutma.screen.dart';
import 'package:coffee_delivery/services/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CorzinkaScreen extends StatelessWidget {
  const CorzinkaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterPr>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Savatcha"),
      ),
      body: ListView.builder(
          itemCount: count.currentCount,
          itemBuilder: (_, index) {
            return  Dismissible(
              key: const ValueKey<int>(12),
              background: const ColoredBox(color: Colors.red,child: SizedBox(child: Icon(Icons.delete,color: Colors.white,),),),
              child: Container(
                height: 130,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(20),
                decoration:  BoxDecoration(
                 border: Border.symmetric(horizontal: BorderSide(width: 0.5,color: Colors.grey.shade200))
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: AssetImage("assets/images/img_chocolate_quento.png"),height: 64,width: 64,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Data"),
                        const Text("DataВ"),
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(6)),
                                border: Border.all(width: 1,color: Colors.grey.shade200)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("-"),
                                  Text("1"),
                                  Text("+"),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 36,
                              width: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                                borderRadius: const BorderRadius.all(Radius.circular(6))
                              ),
                              child: const Icon(Icons.delete),
                            )
                          ],
                        ),
                      ],
                    ),
                    Consumer<CounterPr>(
                      builder: (_,index,child)=>Text(
                        "R\$${count.currentItem}",
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )
            );
          }),
      bottomSheet: Container(
        height: 130,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            color: Colors.black.withOpacity(.20),
            blurRadius: 5,
            spreadRadius: .1,
          ),
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Row(
              children: [
                const Text("Summa:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    )),
                const Spacer(),
                Consumer<CounterPr>(
                  builder: (_,index,child)=>Text(
                    "R\$${count.currentItem}",
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>const BuyurtmaRasmuylashgtirish()));
              },
              child: Container(
                height: 46,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xffC47F17),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: const Text(
                  "Buyurtmani tasdiqlang",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
