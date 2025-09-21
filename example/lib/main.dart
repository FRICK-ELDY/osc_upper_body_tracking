import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

// FRB の再エクスポートを読み込む（lib/osc_upper_body_tracking.dart）
import 'package:osc_upper_body_tracking/osc_upper_body_tracking.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Rust を初期化して、FRB 生成関数を呼ぶ
  Future<void> initPlatformState() async {
    String text;
    try {
      // エントリポイント初期化（複数回呼んでもOK）
      await RustLib.init();

      // 生成済みのトップレベル関数（lib/src/rust/api/simple.dart）
      // `greet({required String name})` がある前提
      text = greet(name: 'ubct');
    } on PlatformException {
      text = 'Failed to initialize Rust.';
    } catch (e) {
      text = 'Error: $e';
    }

    if (!mounted) return;
    setState(() {
      _platformVersion = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(child: Text('Running on: $_platformVersion\n')),
      ),
    );
  }
}
