import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
({ThemeData lightTheme, ThemeData darkTheme}) theme(Ref ref) {
  return (
    lightTheme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
  );
}
