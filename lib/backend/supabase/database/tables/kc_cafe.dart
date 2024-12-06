import '../database.dart';

class KcCafeTable extends SupabaseTable<KcCafeRow> {
  @override
  String get tableName => 'kc_cafe';

  @override
  KcCafeRow createRow(Map<String, dynamic> data) => KcCafeRow(data);
}

class KcCafeRow extends SupabaseDataRow {
  KcCafeRow(super.data);

  @override
  SupabaseTable get table => KcCafeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get estagio => getField<String>('estagio');
  set estagio(String? value) => setField<String>('estagio', value);

  double? get valorKc => getField<double>('valor_kc');
  set valorKc(double? value) => setField<double>('valor_kc', value);

  String? get info => getField<String>('info');
  set info(String? value) => setField<String>('info', value);
}
