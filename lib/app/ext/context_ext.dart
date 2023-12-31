import 'package:flutter/material.dart';
import 'package:flutter_riverpod_template/generated/l10n.dart';

extension BuildContextEx on BuildContext {
  //如果有上下文的尽量使用上下文
  S get loc {
    return S.of(this);
  }
}
