part of 'palindrome_bloc.dart';

@freezed
abstract class PalindromeEvent with _$PalindromeEvent {
  const factory PalindromeEvent.nameChanged(String value) = _NameChanged;

  const factory PalindromeEvent.phraseChanged(String value) = _PhraseChanged;

  const factory PalindromeEvent.checkPalindromePressed() =
      _CheckPalindromePressed;
}
