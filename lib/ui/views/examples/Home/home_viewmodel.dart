import 'package:stacked/stacked.dart';

// class HomeViewModel extends BaseViewModel{

// String _title = 'Home View';
// String get title => _title ;

// int _counter = 0;

// // ignore: non_constant_identifier_names
// int get Counter =>_counter;

// void updateCounter(){
//   _counter++;
//   notifyListeners();
// }
// }
class HomeViewModel extends IndexTrackingViewModel{

String _title = 'Home View';
String get title => _title ;

int _counter = 0;

// ignore: non_constant_identifier_names
int get Counter =>_counter;

void updateCounter(){
  _counter++;
  notifyListeners();
}
}