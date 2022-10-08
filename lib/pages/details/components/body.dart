import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/service_model.dart';
import 'package:shop_app/size_config.dart';

import 'service_description.dart';
import 'top_rounded_container.dart';
import 'service_images.dart';

class Body extends StatelessWidget {
  final Service service;

  const Body({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ServiceImages(service: service),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ServiceDescription(
                service: service,
                pressOnSeeMore: () {},
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  bottom: getProportionateScreenWidth(40),
                  top: getProportionateScreenWidth(15),
                ),
                child: DefaultButton(
                  text: "Action",
                  press: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
