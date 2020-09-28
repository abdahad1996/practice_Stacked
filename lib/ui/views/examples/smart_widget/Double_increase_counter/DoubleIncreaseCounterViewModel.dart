// single_increase_counter_viewmodel.dart
import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/services/CounterService.dart';
import 'package:stacked/stacked.dart';
// double_increase_counter_viewmodel.dart
// ViewModel reacts to the changes in this service. 
// To do this we make use of the ReactiveViewModel. 
// Change the SingleIncreaseCounterViewModel and the
//  DoubleIncreaseCounterViewModel to extend the 
//  ReactiveViewModel instead of the BaseViewModel. 
//  This will require you to override the reactiveServices getter.
//  In that list we supply the _counterService
class DoubleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.doubleCounter();
    notifyListeners();
  }

  @override
   List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}