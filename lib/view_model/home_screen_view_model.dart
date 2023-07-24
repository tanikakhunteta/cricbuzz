import 'package:get/state_manager.dart';

class HomeScreenViewModel{
  var selectedItem =0.obs;
  void onTapSelected(int index){
    selectedItem.value=index;

  }
}