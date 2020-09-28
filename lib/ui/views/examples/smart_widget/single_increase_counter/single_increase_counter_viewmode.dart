//single_increase_counter.dart
// import 'package:Practice_Stacked/UI/pages/smart_widget/single_increase_counter/single_increase_counter.dart';
// import 'package:Practice_Stacked/UI/views/smart_widget/single_increase_counter/single_increase_counter.dart';
import 'package:Practice_Stacked/ui/views/examples/smart_widget/single_increase_counter/single_increase_counter.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap to increment the Counter',
                textAlign: TextAlign.center,
              ),
              // Text(model.counter?.toString() ?? '10')
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
    );
  }
}
