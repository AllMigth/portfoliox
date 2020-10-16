import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portafolioX/coolors.dart';
import 'package:portafolioX/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
            mobile: VStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.heightBox,
                "jgarzon292@gmail.com"
                    .text
                    .color(Coolers.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolers.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              crossAlignment: CrossAxisAlignment.center,
            ),
            web: HStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.widthBox,
                "jgarzon292@gmail.com"
                    .text
                    .color(Coolers.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolers.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentHeight * 70).scale50().p16()),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling. ".richText.semiBold.white.withTextSpanChildren(
            ["That's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          "Made in Ecuador with".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
