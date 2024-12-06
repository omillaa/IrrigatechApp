import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://beefqdawsvojjhepohxz.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlZWZxZGF3c3ZvampoZXBvaHh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjUzMDMxNjUsImV4cCI6MjA0MDg3OTE2NX0.31xdWXYcbrGezEotBQ13idSLHJq48R5IodSK-OG-YFU';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
