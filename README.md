# dart-app

Consumes `zed-pkg-test/dart-lib` via zed while pub owns the rest of
`pubspec.yaml`.

Dart is the adapter that cannot be zero-touch: pub has no environment-variable
path override, so `zed install` writes `.zed/pub-deps.yaml` and the entry is
merged under `dependencies:` here by hand.

The committed `pubspec.yaml` carries the **corrected** key
(`zed_pkg_test_dart_lib`, the package's real pub name). The generated fragment
uses the install directory basename (`dart-lib`) instead, which `dart pub get`
rejects as "Not a valid package name" -- see
[dart-lib](https://github.com/zed-pkg-test/dart-lib#known-issue-with-the-generated-fragment).

## License

MIT
