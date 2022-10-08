import 'package:flutter/material.dart';
import '../../models/service_model.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ServiceDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ServiceDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(price: agrs.service.price),
      ),
      body: Body(service: agrs.service),
    );
  }
}

class ServiceDetailsArguments {
  final Service service;

  ServiceDetailsArguments({required this.service});
}
