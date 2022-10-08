import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/service_model.dart';
import 'package:shop_app/pages/details/details_view.dart';
import 'package:shop_app/routes/app_routes.dart';

import '../constants.dart';
import '../size_config.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.service,
  }) : super(key: key);

  final double width, aspectRetio;
  final Service service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            AppRoutes.detailPage,
            arguments: ServiceDetailsArguments(service: service),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: service.id.toString(),
                    child: Image.asset(service.images[0], fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                service.title,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
