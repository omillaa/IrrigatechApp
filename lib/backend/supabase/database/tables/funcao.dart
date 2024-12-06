import '../database.dart';

class FuncaoTable extends SupabaseTable<FuncaoRow> {
  @override
  String get tableName => 'funcao';

  @override
  FuncaoRow createRow(Map<String, dynamic> data) => FuncaoRow(data);
}

class FuncaoRow extends SupabaseDataRow {
  FuncaoRow(super.data);

  @override
  SupabaseTable get table => FuncaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
