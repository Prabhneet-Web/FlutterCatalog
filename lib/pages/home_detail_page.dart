import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class homeDetailPage extends StatelessWidget {
  final Item catalog;

  const homeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "₹ ${catalog.price}".text.bold.xl.red900.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 40),
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.asset(catalog.image),
            ).h32(context).p20(),
            const Divider(),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.bold
                        .color(context.accentColor)
                        .make(),
                    catalog.desc.text
                        .textStyle(context.captionStyle!)
                        .lg
                        .make(),
                    10.heightBox,
                    catalog.fullDesc.text
                        .textStyle(context.captionStyle!)
                        .make()
                        .px12(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
