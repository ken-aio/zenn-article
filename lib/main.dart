import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'importer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// envファイルの読み込み
  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: App()));
}
