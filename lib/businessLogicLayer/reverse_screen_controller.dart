import 'package:get/get.dart';
import '../datalayer/dataProviders/data_provider.dart';
class ReverseScreenController extends GetxController{
  DataProvider dataProvider;
  var status="Last update: 28-April-24: 3:00 PM".obs;
  ReverseScreenController(this.dataProvider);

}