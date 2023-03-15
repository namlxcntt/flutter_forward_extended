import 'package:flutter/cupertino.dart';
import 'package:flutter_forward_extend/generated/l10n.dart';

extension DelegateString on BuildContext {
  S getString() {
    return S.of(this);
  }

}