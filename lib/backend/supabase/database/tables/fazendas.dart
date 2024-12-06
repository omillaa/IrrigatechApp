import '../database.dart';

class FazendasTable extends SupabaseTable<FazendasRow> {
  @override
  String get tableName => 'fazendas';

  @override
  FazendasRow createRow(Map<String, dynamic> data) => FazendasRow(data);
}

class FazendasRow extends SupabaseDataRow {
  FazendasRow(super.data);

  @override
  SupabaseTable get table => FazendasTable();

  int get idFazenda => getField<int>('id_fazenda')!;
  set idFazenda(int value) => setField<int>('id_fazenda', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get localizacao => getField<String>('localizacao');
  set localizacao(String? value) => setField<String>('localizacao', value);

  double? get area => getField<double>('area');
  set area(double? value) => setField<double>('area', value);

  String? get tipoSolo => getField<String>('tipo_solo');
  set tipoSolo(String? value) => setField<String>('tipo_solo', value);

  String? get recursohidrico => getField<String>('recursohidrico');
  set recursohidrico(String? value) =>
      setField<String>('recursohidrico', value);
}
