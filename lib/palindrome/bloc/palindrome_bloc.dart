import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suitmedia_test_one/palindrome/models/models.dart';

part 'palindrome_bloc.freezed.dart';
part 'palindrome_event.dart';
part 'palindrome_state.dart';

class PalindromeBloc extends Bloc<PalindromeEvent, PalindromeState> {
  PalindromeBloc() : super(const PalindromeState()) {
    on<_NameChanged>(_onNameChanged);
    on<_PhraseChanged>(_onPhraseChanged);
    on<_CheckPalindromePressed>(_onCheckPalindromePressed);
  }

  void _onNameChanged(_NameChanged event, Emitter<PalindromeState> emit) {
    final name = NameInput.dirty(event.value);
    emit(
      state.copyWith(
        nameInput: name,
        isValidInput: Formz.validate([name, state.phraseInput]),
      ),
    );
  }

  void _onPhraseChanged(
    _PhraseChanged event,
    Emitter<PalindromeState> emit,
  ) {
    final phrase = PhraseInput.dirty(event.value);
    emit(
      state.copyWith(
        phraseInput: phrase,
        isValidInput: Formz.validate([state.nameInput, phrase]),
      ),
    );
  }

  void _onCheckPalindromePressed(
    _CheckPalindromePressed event,
    Emitter<PalindromeState> emit,
  ) {
    if (!state.isValidInput) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final isPalindrome = _isPalindrome(state.phraseInput.value);
    emit(
      state.copyWith(
        status: FormzSubmissionStatus.success,
        isPalindrome: isPalindrome,
      ),
    );
  }

  bool _isPalindrome(String sentence) {
    final cleanedSentence = sentence
        .replaceAll(RegExp(r'[\W_]+'), '')
        .toLowerCase();

    return cleanedSentence == cleanedSentence.split('').reversed.join();
  }
}
