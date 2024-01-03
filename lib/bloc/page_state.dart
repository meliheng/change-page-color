import 'package:flutter/material.dart';

class PageState {
  final Color pageColor;

  PageState({
    required this.pageColor,
  });

  PageState copyWith({
    String? textValue,
    Color? pageColor,
  }) {
    return PageState(
      pageColor: pageColor ?? this.pageColor,
    );
  }
}
