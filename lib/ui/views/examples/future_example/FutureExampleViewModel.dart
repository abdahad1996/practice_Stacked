import 'package:stacked/stacked.dart';

//here's a function called futureToRun which is a required override and
// it has to return the type as passed into the FutureViewModel.
// In this case a string that we'll return after 3 seconds of delay.
//  The value return will be in the data property.
//  As you see in the UI above we show a progress indicator while .isBusy is true,
// //  which will automatically be set to false when the future is complete

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(Duration(seconds: 3));
    // return 'mock data returned from server';
    throw Exception('This is an error');
  }

//When that error is thrown the property hasError will be true so you can show a different UI.
//  Lets see how that would look in the UI code.
  @override
  void onError(error) {
    //// error thrown above will be sent here
    // We can show a dialog, set the error message to show on the UI
    // the UI will be rebuilt after this is called so you can set properties.
  }
  @override
  Future<String> futureToRun() {
    return getDataFromServer();
  }
}
