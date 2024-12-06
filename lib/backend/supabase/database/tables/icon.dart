import '../database.dart';

class IconTable extends SupabaseTable<IconRow> {
  @override
  String get tableName => 'icon';

  @override
  IconRow createRow(Map<String, dynamic> data) => IconRow(data);
}

class IconRow extends SupabaseDataRow {
  IconRow(super.data);

  @override
  SupabaseTable get table => IconTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);
}
