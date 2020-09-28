 import 'package:stacked/stacked.dart';

//data property 
//has error property
//It also has an onError override along with an hasError property that will help you to determine if an error has occurred. Streams will be automatically disposed when the ViewModel is disposed. T
// hat dispose is tied to the widget's lifecycle.
class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => 'This is the time since epoch in seconds \n $data';

//An additional set of functionalities is present for the Stream 
// which is the idea of the stream source changing. Say for instance in
//  something like firebase you make a query for one stream then update 
//  that query and want this ViewModel to update it's stream source. 
//  The same way we have a notifyListeners to rebuild the UI we have
//   a notifySourceChanged to tell the ViewModel the source has changed.
//    This will automatically dispose the current stream, 
//    listen to the new stream and then set
//     the data to the new values as they come through.
//      We can quickly show how to do that if we duplicate 
//      the stream function and make it emit faster,
//  then we can swap between the two.
  bool _otherSource = false;    
 @override
  Stream<int> get stream => _otherSource ? epochUpdatesNumbers() : epochFasterUpdates();
  //Streams created in this manner are broadcast by default and allows for multiple subscriptions
  Stream<int> epochUpdatesNumbers() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
  Stream<int> epochFasterUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

   void swapSources() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }
}