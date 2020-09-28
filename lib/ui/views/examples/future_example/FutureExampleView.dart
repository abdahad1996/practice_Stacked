import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'FutureExampleViewModel.dart';

// ignore: camel_case_types
class futureExampleView extends StatelessWidget {
  const futureExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(builder: (context,model,child) => 
    Scaffold(body: model.hasError != null
            ? Container( 
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  'An error has occered while running the future',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : 
    Center(child: model.isBusy ? const CircularProgressIndicator():Text(model.data),),)
    , viewModelBuilder: () => FutureExampleViewModel());

  }
}