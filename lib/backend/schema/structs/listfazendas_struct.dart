// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListfazendasStruct extends BaseStruct {
  ListfazendasStruct({
    List<ListfazendasStruct>? listafazendas,
  }) : _listafazendas = listafazendas;

  // "listafazendas" field.
  List<ListfazendasStruct>? _listafazendas;
  List<ListfazendasStruct> get listafazendas => _listafazendas ?? const [];
  set listafazendas(List<ListfazendasStruct>? val) => _listafazendas = val;

  void updateListafazendas(Function(List<ListfazendasStruct>) updateFn) {
    updateFn(_listafazendas ??= []);
  }

  bool hasListafazendas() => _listafazendas != null;

  static ListfazendasStruct fromMap(Map<String, dynamic> data) =>
      ListfazendasStruct(
        listafazendas: getStructList(
          data['listafazendas'],
          ListfazendasStruct.fromMap,
        ),
      );

  static ListfazendasStruct? maybeFromMap(dynamic data) => data is Map
      ? ListfazendasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'listafazendas': _listafazendas?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'listafazendas': serializeParam(
          _listafazendas,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ListfazendasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListfazendasStruct(
        listafazendas: deserializeStructParam<ListfazendasStruct>(
          data['listafazendas'],
          ParamType.DataStruct,
          true,
          structBuilder: ListfazendasStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListfazendasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListfazendasStruct &&
        listEquality.equals(listafazendas, other.listafazendas);
  }

  @override
  int get hashCode => const ListEquality().hash([listafazendas]);
}

ListfazendasStruct createListfazendasStruct() => ListfazendasStruct();
