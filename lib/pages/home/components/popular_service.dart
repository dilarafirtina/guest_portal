import 'package:flutter/material.dart';
import 'package:shop_app/components/service_card.dart';
import 'package:shop_app/models/service_model.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Services", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoServices.length,
                (index) {
                  if (demoServices[index].isPopular) {
                    return ServiceCard(service: demoServices[index]);
                  }
                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
