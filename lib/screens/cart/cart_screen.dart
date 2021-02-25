import 'package:flutter/material.dart';

import 'components/body.dart';

class CarrinhoScreen extends StatelessWidget {
  static String routeName = "/carrinho";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text("Seu carrinho"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
