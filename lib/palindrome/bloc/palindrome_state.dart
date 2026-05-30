part of 'palindrome_bloc.dart';

@freezed
abstract class PalindromeState with _$PalindromeState {
  const factory PalindromeState({
    @Default(NameInput.pure()) NameInput nameInput,
    @Default(PhraseInput.pure()) PhraseInput phraseInput,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValidInput,
    @Default(false) bool isPalindrome,
  }) = _PalindromeState;
}
