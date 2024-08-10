import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/View/widget/cart/custom_card_cart.dart';
import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                AppBar(

                  actions: const [
                    Icon(Icons.arrow_forward_rounded,color: Colors.black,)
                  ],
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  title: const Text("سلة التسوق"),
                ),
                const SizedBox(
                  height: 120,
                ),
                const CustomCardCart(imageLink:'assets/images/grape5.png', titleName: ' عنب' ,price: '1500',),
                const CustomCardCart(imageLink:'assets/images/banana.png' , titleName: 'موز' ,price: '1500',),
                const CustomCardCart(imageLink:'assets/images/strawberry.png' , titleName: 'فرولة' ,price: '1500',),
                const CustomCardCart(imageLink:'assets/images/vocado.png' , titleName: 'افكادوا' ,price: '1500',),
                const CustomCardCart(imageLink:'assets/images/egg.png' , titleName: 'بيض' ,price: '1500',),
                Container(
                  height: MediaQuery.of(context).size.width * .2,
                  width: MediaQuery.of(context).size.width - 80.0,
                  decoration:  const BoxDecoration(

                    // color: Color(0xffF3BDA7),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(33.0),
                          topLeft: Radius.circular(33.0))),
                  child:  const Center(child: Text("الإجمالي :60000ريال")),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: AppButton(child: Text("الدفع",style: TextStyle(color: Colors.white),),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
