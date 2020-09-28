// import 'package:Practice_Stacked/UI/pages/Validation_Example/validation_example_viewmodel.dart';
// import 'package:Practice_Stacked/UI/views/Validation_Example/validation_example_viewmodel.dart';
import 'package:Practice_Stacked/ui/views/examples/Validation_Example/validation_example_viewmodel.dart';
import 'package:flutter/material.dart';
 import 'package:stacked/stacked.dart';

class ValidationExampleView extends StatelessWidget {
  const ValidationExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ValidationExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => ValidationExampleViewModel(),
    );
  }
}
