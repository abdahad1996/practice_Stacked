// import 'package:Practice_Stacked/UI/pages/Posts/postsview.dart';
// import 'package:Practice_Stacked/UI/pages/Todo/todoview.dart';
// import 'package:Practice_Stacked/views/examples/Posts/postsview.dart';
// import 'package:Practice_Stacked/views/examples/Todo/todoview.dart';
import 'package:Practice_Stacked/ui/views/examples/Posts/postsview.dart';
import 'package:Practice_Stacked/ui/views/examples/Todo/todoview.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

// ignore: camel_case_types
class homeView extends StatelessWidget {
  const homeView({Key key}) : super(key: key);

  Widget getViewOnTap(int index) {
    switch (index) {
      case 0:
        return const PostsView();
        break;
      case 1:
        return const TodoView();
        break;
      default:
        return const PostsView();
    }
  }

  @override
  Widget build(BuildContext context) {
    //This indicates that the builder will be called to
    // rebuild the UI every time notifyListeners is
    //  called in the ViewModel
    // return ViewModelBuilder<HomeViewModel>.reactive(
    //     builder: (context, model, child) => Scaffold(
    //         body: Center(
    //           child: Text('${model.Counter}'),
    //         ),
    //         floatingActionButton: FloatingActionButton(
    //           onPressed: () => model.updateCounter(),
    //         )),
    //     viewModelBuilder: () => HomeViewModel());

    return ViewModelBuilder.reactive(
        builder: (context, model, child) => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: model.currentIndex as int,
                onTap: model.setIndex,
                items: [
                  BottomNavigationBarItem(
                      label: "posts", icon: Icon(Icons.art_track)),
                  BottomNavigationBarItem(
                      label: "Todoss", icon: Icon(Icons.list_alt_outlined))
                ],
              ),
              appBar: AppBar(backgroundColor: Colors.black),
              body: PageTransitionSwitcher(
                duration: const Duration(milliseconds: 300),
                reverse: model.reverse,
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return SharedAxisTransition(
                    child: child,
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.horizontal,
                  );
                },
                child: getViewOnTap(model.currentIndex as int),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
