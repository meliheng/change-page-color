import 'package:flutter/material.dart';

class PageState {
  Color pageColor;
  String value;

  PageState({
    required this.pageColor,
    required this.value,
  });

  factory PageState.initial() {
    return PageState(
      pageColor: Colors.white,
      value: '',
    );
  }

  PageState copyWith({
    String? textValue,
    Color? pageColor,
  }) {
    return PageState(
      pageColor: pageColor ?? this.pageColor,
      value: textValue ?? value,
    );
  }
}
