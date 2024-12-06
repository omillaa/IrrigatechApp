import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? getLong(LatLng? latlng) {
  return latlng?.longitude;
}

double? getLat(LatLng? getlat) {
  return getlat?.latitude;
}

String? getEstado(String estado) {
  Map<String, String> estados = {
    "Acre": "AC",
    "Alagoas": "AL",
    "Amapá": "AP",
    "Amazonas": "AM",
    "Bahia": "BA",
    "Ceará": "CE",
    "Distrito Federal": "DF",
    "Espírito Santo": "ES",
    "Goiás": "GO",
    "Maranhão": "MA",
    "Mato Grosso": "MT",
    "Mato Grosso do Sul": "MS",
    "Minas Gerais": "Mg",
    "Pará": "PA",
    "Paraíba": "PB",
    "Paraná": "PR",
    "Pernambuco": "PE",
    "Piauí": "PI",
    "Rio de Janeiro": "RJ",
    "Rio Grande do Norte": "RN",
    "Rio Grande do Sul": "RS",
    "Rondônia": "RO",
    "Roraima": "RR",
    "Santa Catarina": "SC",
    "São Paulo": "SP",
    "Sergipe": "SE",
    "Tocantins": "TO",
  };

  return estados[estado] ?? "Estado não encontrado";
}

int? getdata(DateTime? data) {
  if (data == null) {
    return null; // Retorna null caso a data seja nula
  }
  final DateFormat dateFormat = DateFormat('yyyyMMdd');
  return int.tryParse(
      dateFormat.format(data)); // Converte a data formatada para inteiro
}

String? dataunix() {
  DateTime now = DateTime.now();
  // Reseta a hora, minuto, segundo e milissegundo
  DateTime dateOnly = DateTime(now.year, now.month, now.day);
  int timestamp =
      dateOnly.millisecondsSinceEpoch ~/ 1000; // Converte para segundos
  return timestamp.toString();
}

int dataunixfut(int dias) {
  DateTime now = DateTime.now();
  // Adiciona o número de dias fornecido como parâmetro
  DateTime dataFutura = now.add(Duration(days: dias));
  // Reseta a hora, minuto, segundo e milissegundo
  DateTime dataFuturaSemHora =
      DateTime(dataFutura.year, dataFutura.month, dataFutura.day);
  int timestamp = dataFuturaSemHora.millisecondsSinceEpoch ~/
      1000; // Converte para segundos
  return timestamp; // Retorna diretamente o valor de timestamp
}

String dttrans(int dt) {
  // Cria um objeto DateTime a partir do timestamp
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);

  // Mapeia os dias da semana em português
  List<String> diasDaSemana = [
    'Domingo',
    'Segunda-feira',
    'Terça-feira',
    'Quarta-feira',
    'Quinta-feira',
    'Sexta-feira',
    'Sábado'
  ];

  // Retorna o nome do dia da semana, baseado no número do dia
  return diasDaSemana[dateTime.weekday % 7];
}

double calcKl(
  double dc,
  double er,
) {
  // fazer uma funcao double, primeiro vai receber dois parametros, para calcula  area sombreada AS = diametro da copa / espacamento entre ruas, depois vai usar a formula Kl=AS+0,15*(1--AS)
  double AS = dc / er;
  double Kl = AS + 0.15 * (1 - AS);
  return Kl;
}

double calcEvapo(
  double tmax,
  double tmin,
) {
  double tmedia = (tmax + tmin) / 2;
  double rs = 24;
  double et = 0.0023 * (tmedia + 17.8) * math.pow((tmax - tmin), 0.5) * rs;
  return double.parse(et.toStringAsFixed(2));
}

String? getdata2(DateTime? data) {
  if (data == null) {
    return null; // Retorna null caso a data seja nula
  }
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  return dateFormat.format(data);
}

double? calcLamina(
  double eto,
  double kc,
  double kl,
) {
  double lamina = (eto * kc) * kl / 0.95;

  return double.parse(lamina.toStringAsFixed(2));
}

double? calcLaminaAjustada(
  double lamina,
  double precip,
) {
  double result = lamina - precip;

  return double.parse(result.toStringAsFixed(2));
}

double? calcLaminaPivo(
  double eto,
  double kc,
) {
  double lamina = (eto * kc) / 0.70;

  return double.parse(lamina.toStringAsFixed(2));
}
