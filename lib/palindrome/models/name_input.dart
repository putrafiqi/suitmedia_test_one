import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';

enum NameValidationError { empty, tooShort }

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');
  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return NameValidationError.empty;
    } else if (trimmedValue.length < 2) {
      return NameValidationError.tooShort;
    } else {
      return null;
    }
  }
}

extension NameValidationErrorX on NameValidationError {
  String text(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case NameValidationError.empty:
        return l10n.nameCannotBeEmpty;
      case NameValidationError.tooShort:
        return l10n.nameMustBeAtLeast2Characters;
    }
  }
}
