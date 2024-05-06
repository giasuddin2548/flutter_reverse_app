
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../businessLogicLayer/reverse_screen_controller.dart';
import '../../datalayer/dataProviders/data_provider.dart';
import '../../datalayer/dataProviders/dio_interceptor.dart';

class ReversScreen extends StatelessWidget {
   ReversScreen({super.key});

  ReverseScreenController controller=Get.put(ReverseScreenController(DataProvider(dioInterceptor: DioInterceptor())));


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

