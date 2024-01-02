import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleText extends Text{
  TitleText(String data, {Key? key, bool isSubTitle= false, required BuildContext context}):
      super(data,key: key, style: isSubTitle
      ? context.general.textTheme.titleLarge
      : context.general.textTheme.displayMedium?.copyWith(color: context.general.colorScheme.onPrimary,)
      );
}