// partial_builds_view.dart
 import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import 'partialbuildsViewModel.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            strForm(),
            _TitleAndValue()
          ],
        ),
      ),
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}
//So what's happening here is we're using the Hooks version of the ViewModelWidget and setting the reactive property to false. This tells the widget that when notifyListeners is called for the ViewModel associated with this view the buildViewModelWidget should not be called again. Then we have the buildViewModelWidget which will build our UI. Simple UI, we create a text editting controller and return a text field. We also call model.updateString from the onChanged function callback of the TextField. Then we can update our ViewModel.
// ignore: camel_case_types
class strForm extends HookViewModelWidget<PartialBuildsViewModel>{
    strForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(BuildContext context, PartialBuildsViewModel model) {
    var text = useTextEditingController();
   return TextField(controller: text,onChanged:model.updateString);
  }
 }

//This widget will inherit the same ViewModel to get access to it through the build function but this time the reactive value is set to true. This means that whenever notifyListeners is called the _TitleAndValue widget will be rebuilt. That is the only widget that is rebuild when the value changes. If you add print statements into the view's builder function, the _StringForm build override and the _TitleAndValue build function you'll see a log like this.
 class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    return Column(
      children: <Widget>[
        Text(
          model.title ?? '',
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}