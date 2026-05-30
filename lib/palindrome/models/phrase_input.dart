import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';

enum PhraseValidationError { empty, tooShort }

class PhraseInput extends FormzInput<String, PhraseValidationError> {
  const PhraseInput.pure() : super.pure('');
  const PhraseInput.dirty([super.value = '']) : super.dirty();

  @override
  PhraseValidationError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return PhraseValidationError.empty;
    } else if (trimmedValue.length < 2) {
      return PhraseValidationError.tooShort;
    } else {
      return null;
    }
  }
}

extension PhraseValidationErrorX on PhraseValidationError {
  String text(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PhraseValidationError.empty:
        return l10n.phraseCannotBeEmpty;
      case PhraseValidationError.tooShort:
        return l10n.phraseMustBeAtLeast2Characters;
    }
  }
}
