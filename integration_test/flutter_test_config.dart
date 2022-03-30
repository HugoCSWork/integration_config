import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:window_size/window_size.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  setUp(() {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      setWindowFrame(const Rect.fromLTRB(0, 0, 1920, 1080));
    }
  });

  await testMain();
}
