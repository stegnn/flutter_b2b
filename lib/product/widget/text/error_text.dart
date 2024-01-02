import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ErrorText extends Text {
  ErrorText(String data,{Key? key, required BuildContext context})
  : super(data,
  key: key,
    style: context.general.textTheme.titleLarge?.copyWith(color: context.general.colorScheme.error,)
  );
}