import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: 
      Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(133, 102, 235, 1),
              // color: kPrimaryColor,
               borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50)
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(-3, 3),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: -2,
                )
              ],
            ),
            width: double.infinity,
            height: getProportionateScreenHeight(215),
          ),
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: getProportionateScreenWidth(20)),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(50)),
                    Text(
                      "Olá, João,",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(30),
                          color: Colors.white,
                          height: 0.5),
                    ),
                    Text(
                      "Que bom te ver por aqui de novo!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(20),
                      ),
                    ),
                  ],
                ), 
              ),
              Expanded(
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(30)),
                    IconBtnWithCounter(
                      numOfitem: 2,
                      svgSrc: "assets/icons/Cart Icon.svg",
                      press: () {},
                    ),
                  ],
                ), 
              ),
               
              
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-25),
            child: Row(
              children: [
                SearchField(),
                SizedBox(width: getProportionateScreenWidth(10)),
                FilterBtn(),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: getProportionateScreenWidth(-35),
            child: Image.asset(
              "assets/images/et_hand.png"
            ),
          )
        ],
      ),
    );
  }
}

class FilterBtn extends StatelessWidget {
  const FilterBtn({
    Key key,
    this.press
  }) : super(key: key);
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(-3, 3),
            blurRadius: 5,
            color: Colors.black.withOpacity(0.3),
            spreadRadius: -2,
          )
        ],
      ),
      child:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: FlatButton (
          color: Colors.white,
          onPressed: press,
          child: 
          Icon(
            Icons.filter_list,
            color: Colors.black.withOpacity(.5)
          ),
        ),
      )
    );
  }
}
