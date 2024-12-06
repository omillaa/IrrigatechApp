import '../database.dart';

class UsuarioFuncaoViewTable extends SupabaseTable<UsuarioFuncaoViewRow> {
  @override
  String get tableName => 'usuario_funcao_view';

  @override
  UsuarioFuncaoViewRow createRow(Map<String, dynamic> data) =>
      UsuarioFuncaoViewRow(data);
}

class UsuarioFuncaoViewRow extends SupabaseDataRow {
  UsuarioFuncaoViewRow(super.data);

  @override
  SupabaseTable get table => UsuarioFuncaoViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nomeusuario => getField<String>('nomeusuario');
  set nomeusuario(String? value) => setField<String>('nomeusuario', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
