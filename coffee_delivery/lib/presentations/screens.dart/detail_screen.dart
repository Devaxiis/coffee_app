import 'package:coffee_delivery/presentations/screens.dart/buyutma.screen.dart';
import 'package:coffee_delivery/presentations/screens.dart/carzinka_screen.dart';
import 'package:coffee_delivery/presentations/views/detail_screens_views/child_cards.dart';
import 'package:coffee_delivery/services/contants/colors.dart';
import 'package:coffee_delivery/services/contants/strings.dart';
import 'package:coffee_delivery/services/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterPr>(context);
    return Scaffold(
      backgroundColor: AppColor.backgrounCl,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back,color: Colors.white,)),
      backgroundColor: AppColor.backgrounCl,
        actions:  [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const CorzinkaScreen()));
            },
              borderRadius: BorderRadius.circular(50),
              child: Badge(
                  alignment: Alignment.topRight,
                  backgroundColor: Color(0xff8047F8),
                  smallSize: 15,
                  isLabelVisible: true,
                  label:Text("${count.currentCount}",style:TextStyle(fontSize: 10,color: Colors.white) ,),
                  child: const Image(image: AssetImage("assets/icons/ic_shop.png"),color: AppColor.iconCl,height: 20,width: 20,))),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 25,
                width: 75,
                margin: const EdgeInsets.only(top: 30,bottom: 15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.40),
                  borderRadius: const BorderRadius.all(Radius.circular(50))
                ),
                child: const Text("ESPECIAL",style: TextStyle(fontSize: 11,color: Colors.white),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text("Irland",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                  const Spacer(),
                  Text("R\$${count.currentItem}",style: const TextStyle(fontSize: 20,color: Colors.amberAccent,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(StringText.expresso_cremoso_descTx,style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Colors.grey),),
            ),

            const Center(child: Image(image: AssetImage('assets/images/img_smoke.png'),height: 100,)),

            Center(child: Transform.scale(
                scale: 1.3,
                child: const Image(image: AssetImage("assets/images/img_select_coffee.png",),height: 250,width: 250,))),
            Container(
              color: Colors.white,
              height: 230,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("O'lchamni tanlang:",style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                  Row(
                    children: [
                      ChildCards(text: "104ml",),
                      const Spacer(),
                      ChildCards(text: "140ml",),
                      const Spacer(),
                      ChildCards(text: "227ml",),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.sizeOf(context).width ,
                    decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                      borderRadius: const BorderRadius.all(Radius.circular(6))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap:(){
                              count.decrement();
                            },
                            child: Consumer<CounterPr>(
                              builder: (_,i,child)=>  const Text("-",style: TextStyle(fontSize: 30,color: Color(0xff4b2995)),)),
                            ),
                        Text(count.currentCount.toString(),style: const TextStyle(fontSize: 30,color: Color(0xff4b2995)),),
                        GestureDetector(
                            onTap: (){
                              count.increment();
                            },
                            child: const Text("+",style: TextStyle(fontSize: 30,color: Color(0xff4b2995)),)),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const BuyurtmaRasmuylashgtirish()));
                          },
                          child: Container(
                            height: 46,
                            width: 150,
                             alignment: Alignment.center,
                             decoration: const BoxDecoration(
                               color: Color(0xff4B2995),
                               borderRadius: BorderRadius.all(Radius.circular(6))
                             ),
                            child: const Text("Buyutma berish",style: TextStyle(fontSize: 15,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
