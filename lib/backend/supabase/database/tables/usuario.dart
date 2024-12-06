import '../database.dart';

class UsuarioTable extends SupabaseTable<UsuarioRow> {
  @override
  String get tableName => 'usuario';

  @override
  UsuarioRow createRow(Map<String, dynamic> data) => UsuarioRow(data);
}

class UsuarioRow extends SupabaseDataRow {
  UsuarioRow(super.data);

  @override
  SupabaseTable get table => UsuarioTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get fotoPerfil => getField<String>('fotoPerfil');
  set fotoPerfil(String? value) => setField<String>('fotoPerfil', value);

  int? get tipoUser => getField<int>('tipo_user');
  set tipoUser(int? value) => setField<int>('tipo_user', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);
}
