// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VwUserfazendasStruct extends BaseStruct {
  VwUserfazendasStruct({
    String? nome,
  }) : _nome = nome;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static VwUserfazendasStruct fromMap(Map<String, dynamic> data) =>
      VwUserfazendasStruct(
        nome: data['nome'] as String?,
      );

  static VwUserfazendasStruct? maybeFromMap(dynamic data) => data is Map
      ? VwUserfazendasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static VwUserfazendasStruct fromSerializableMap(Map<String, dynamic> data) =>
      VwUserfazendasStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VwUserfazendasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VwUserfazendasStruct && nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([nome]);
}

VwUserfazendasStruct createVwUserfazendasStruct({
  String? nome,
}) =>
    VwUserfazendasStruct(
      nome: nome,
    );
