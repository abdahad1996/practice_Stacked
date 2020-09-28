import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'loc.freezed.dart';

@freezed
abstract class Loc with _$Loc {
  factory Loc({
    @required String id,
  }) = _Loc;

  factory Loc.fromJson(Map<String, dynamic> json) => _$LocFromJson(json);
}
