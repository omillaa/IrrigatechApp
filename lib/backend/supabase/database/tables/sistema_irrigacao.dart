import '../database.dart';

class SistemaIrrigacaoTable extends SupabaseTable<SistemaIrrigacaoRow> {
  @override
  String get tableName => 'sistema_irrigacao';

  @override
  SistemaIrrigacaoRow createRow(Map<String, dynamic> data) =>
      SistemaIrrigacaoRow(data);
}

class SistemaIrrigacaoRow extends SupabaseDataRow {
  SistemaIrrigacaoRow(super.data);

  @override
  SupabaseTable get table => SistemaIrrigacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
