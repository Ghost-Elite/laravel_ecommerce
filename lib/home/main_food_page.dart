import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laravel_ecommerce/utils/constant.dart';
import 'package:laravel_ecommerce/utils/dimension.dart';
import 'package:laravel_ecommerce/widgets/big_text.dart';
import 'package:laravel_ecommerce/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print('current height is'+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          //show the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Senegal",color: UtilsColors.mainColor,),
                      Row(
                        children: [
                          SmallText(text: 'Dakar',color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        color: UtilsColors.mainColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                      ),
                      child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconSizer24,),
                    ),
                  )
                ],
              ),
            ),
          ),
          //show
          Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
          ),
        ],
      ),
    );
  }
}
