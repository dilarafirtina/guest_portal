import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/models/service_model.dart';
import 'package:shop_app/pages/details/details_view.dart';
import 'package:shop_app/size_config.dart';

class ProductTileSquare extends StatelessWidget {
  const ProductTileSquare({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Service data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () => Get.to(() => DetailsView()),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: const Color(0xFF8B8B97)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 85,
                    height: 85,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.network(
                        data.images.first,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
