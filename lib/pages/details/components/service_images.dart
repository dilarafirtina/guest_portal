import 'package:flutter/material.dart';
import 'package:shop_app/models/service_model.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ServiceImages extends StatefulWidget {
  const ServiceImages({
    Key? key,
    required this.service,
  }) : super(key: key);

  final Service service;

  @override
  _ServiceImagesState createState() => _ServiceImagesState();
}

class _ServiceImagesState extends State<ServiceImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.service.id.toString(),
              child: Image.asset(widget.service.images[selectedImage],
                  fit: BoxFit.contain),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
      ],
    );
  }

  GestureDetector buildSmallServicePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.service.images[index]),
      ),
    );
  }
}
