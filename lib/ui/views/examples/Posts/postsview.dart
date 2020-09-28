
import 'package:Practice_Stacked/App/locator.dart';
// import 'package:Practice_Stacked/UI/pages/Posts/postsviewmodel.dart';
// import 'package:Practice_Stacked/UI/views/Posts/postsviewmodel.dart';
import 'package:Practice_Stacked/ui/views/examples/Posts/postsviewmodel.dart';
import 'package:flutter/material.dart';
 import 'package:stacked/stacked.dart';

 
class PostsView extends StatelessWidget {
  const PostsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostsViewModel>.reactive(
      // 1 dispose viewmodel
      disposeViewModel: false,
      // 3. set initialiseSpecialViewModelsOnce to true to indicate only initialising once
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.grey[900],
        body: model.isBusy
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   // cro
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.purple[200]),
                    ),
                    Text(
                      'Loading Posts',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            : !model.hasError
                ? ListView.separated(
                    key: PageStorageKey('storage-key'),
                    padding: const EdgeInsets.only(top: 55),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                    itemCount: model.data.length,
                    itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      model.data[index].title,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      model.data[index].body,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.purple[200],
                                ),
                              )
                            ],
                          ),
                        ))
                : Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      model.error.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
      ),
      // 2. register viewmodel as singleton and get from locator
      // Get the viewmodel from the locator to get the singleton instance
      viewModelBuilder: () => locator<PostsViewModel>(),
    );
  }
}