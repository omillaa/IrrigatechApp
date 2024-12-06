import '../database.dart';

class IrrigacaoTable extends SupabaseTable<IrrigacaoRow> {
  @override
  String get tableName => 'irrigacao';

  @override
  IrrigacaoRow createRow(Map<String, dynamic> data) => IrrigacaoRow(data);
}

class IrrigacaoRow extends SupabaseDataRow {
  IrrigacaoRow(super.data);

  @override
  SupabaseTable get table => IrrigacaoTable();

  int get idIrrigacao => getField<int>('id_irrigacao')!;
  set idIrrigacao(int value) => setField<int>('id_irrigacao', value);

  int? get idPlantacao => getField<int>('id_plantacao');
  set idPlantacao(int? value) => setField<int>('id_plantacao', value);

  double? get laminaAgua => getField<double>('lamina_agua');
  set laminaAgua(double? value) => setField<double>('lamina_agua', value);

  DateTime? get dataIrrigacao => getField<DateTime>('data_irrigacao');
  set dataIrrigacao(DateTime? value) =>
      setField<DateTime>('data_irrigacao', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  double? get laminaAjustada => getField<double>('lamina_ajustada');
  set laminaAjustada(double? value) =>
      setField<double>('lamina_ajustada', value);

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);
}
