// zed_pkg_test_dart_lib is sourced via zed (into .vendor/.zed, wired into
// pubspec.yaml from .zed/pub-deps.yaml); everything else would come from pub.
import 'dart:io';

import 'package:zed_pkg_test_dart_lib/dart_lib.dart';

void main() {
  final msg = greet('dart-app');
  stdout.writeln(msg);
  if (!msg.contains('from zed-pkg-test/dart-lib')) {
    stderr.writeln('FAIL: zed-sourced dependency did not resolve');
    exit(1);
  }
  stdout.writeln('OK: zed-sourced dep resolved alongside pub');
}
