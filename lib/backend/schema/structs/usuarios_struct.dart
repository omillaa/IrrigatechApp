// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosStruct extends BaseStruct {
  UsuariosStruct({
    String? nome,
    String? id,
  })  : _nome = nome,
        _id = id;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static UsuariosStruct fromMap(Map<String, dynamic> data) => UsuariosStruct(
        nome: data['nome'] as String?,
        id: data['id'] as String?,
      );

  static UsuariosStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuariosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuariosStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuariosStruct && nome == other.nome && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, id]);
}

UsuariosStruct createUsuariosStruct({
  String? nome,
  String? id,
}) =>
    UsuariosStruct(
      nome: nome,
      id: id,
    );
