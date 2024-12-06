import '../database.dart';

class PlantacoesTable extends SupabaseTable<PlantacoesRow> {
  @override
  String get tableName => 'plantacoes';

  @override
  PlantacoesRow createRow(Map<String, dynamic> data) => PlantacoesRow(data);
}

class PlantacoesRow extends SupabaseDataRow {
  PlantacoesRow(super.data);

  @override
  SupabaseTable get table => PlantacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idFazenda => getField<int>('id_fazenda');
  set idFazenda(int? value) => setField<int>('id_fazenda', value);

  String? get tipoCultura => getField<String>('tipo_cultura');
  set tipoCultura(String? value) => setField<String>('tipo_cultura', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  DateTime? get dataPlantio => getField<DateTime>('data_plantio');
  set dataPlantio(DateTime? value) => setField<DateTime>('data_plantio', value);

  double? get area => getField<double>('area');
  set area(double? value) => setField<double>('area', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  int? get idTipoSistema => getField<int>('id_tipo_sistema');
  set idTipoSistema(int? value) => setField<int>('id_tipo_sistema', value);
}
