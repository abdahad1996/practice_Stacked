// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/examples/Home/home.dart';
import '../ui/views/examples/address_selection/address_selection.dart';

class Routes {
  static const String homeView = '/';
  static const String addressSelectionView = '/address-selection-view';
  static const all = <String>{
    homeView,
    addressSelectionView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: homeView),
    RouteDef(Routes.addressSelectionView, page: AddressSelectionView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    homeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const homeView(),
        settings: data,
      );
    },
    AddressSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddressSelectionView(),
        settings: data,
      );
    },
  };
}
