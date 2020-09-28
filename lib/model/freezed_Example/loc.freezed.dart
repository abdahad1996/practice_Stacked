// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Loc _$LocFromJson(Map<String, dynamic> json) {
  return _Loc.fromJson(json);
}

/// @nodoc
class _$LocTearOff {
  const _$LocTearOff();

// ignore: unused_element
  _Loc call({@required String id}) {
    return _Loc(
      id: id,
    );
  }

// ignore: unused_element
  Loc fromJson(Map<String, Object> json) {
    return Loc.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Loc = _$LocTearOff();

/// @nodoc
mixin _$Loc {
  String get id;

  Map<String, dynamic> toJson();
  $LocCopyWith<Loc> get copyWith;
}

/// @nodoc
abstract class $LocCopyWith<$Res> {
  factory $LocCopyWith(Loc value, $Res Function(Loc) then) =
      _$LocCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$LocCopyWithImpl<$Res> implements $LocCopyWith<$Res> {
  _$LocCopyWithImpl(this._value, this._then);

  final Loc _value;
  // ignore: unused_field
  final $Res Function(Loc) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$LocCopyWith<$Res> implements $LocCopyWith<$Res> {
  factory _$LocCopyWith(_Loc value, $Res Function(_Loc) then) =
      __$LocCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$LocCopyWithImpl<$Res> extends _$LocCopyWithImpl<$Res>
    implements _$LocCopyWith<$Res> {
  __$LocCopyWithImpl(_Loc _value, $Res Function(_Loc) _then)
      : super(_value, (v) => _then(v as _Loc));

  @override
  _Loc get _value => super._value as _Loc;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_Loc(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Loc with DiagnosticableTreeMixin implements _Loc {
  _$_Loc({@required this.id}) : assert(id != null);

  factory _$_Loc.fromJson(Map<String, dynamic> json) => _$_$_LocFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Loc(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Loc'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loc &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$LocCopyWith<_Loc> get copyWith =>
      __$LocCopyWithImpl<_Loc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocToJson(this);
  }
}

abstract class _Loc implements Loc {
  factory _Loc({@required String id}) = _$_Loc;

  factory _Loc.fromJson(Map<String, dynamic> json) = _$_Loc.fromJson;

  @override
  String get id;
  @override
  _$LocCopyWith<_Loc> get copyWith;
}
