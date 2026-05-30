import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';
import 'package:suitmedia_test_one/palindrome/bloc/palindrome_bloc.dart';
import 'package:suitmedia_test_one/palindrome/models/models.dart';

class PalindromeForm extends StatelessWidget {
  const PalindromeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _NameInput(),
        _SentenceInput(),
        _CheckButton(),
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select<PalindromeBloc, NameValidationError?>(
      (bloc) => bloc.state.nameInput.displayError,
    );
    final l10n = context.l10n;
    return TextFormField(
      key: const Key('palindromeForm_nameInput_textField'),
      onChanged: (value) {
        context.read<PalindromeBloc>().add(
          PalindromeEvent.nameChanged(value),
        );
      },
      decoration: InputDecoration(
        hintText: l10n.enterYourName,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: false,
        errorText: displayError?.text(context),
      ),
    );
  }
}

class _SentenceInput extends StatelessWidget {
  const _SentenceInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select<PalindromeBloc, PhraseValidationError?>(
      (bloc) => bloc.state.phraseInput.displayError,
    );
    final l10n = context.l10n;
    return TextFormField(
      key: const Key('palindromeForm_phraseInput_textField'),
      onChanged: (value) {
        context.read<PalindromeBloc>().add(
          PalindromeEvent.phraseChanged(value),
        );
      },
      decoration: InputDecoration(
        hintText: l10n.enterPhrase,
        filled: false,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        errorText: displayError?.text(context),
      ),
    );
  }
}

class _CheckButton extends StatelessWidget {
  const _CheckButton();

  @override
  Widget build(BuildContext context) {
    final isValidInput = context.select<PalindromeBloc, bool>(
      (bloc) => bloc.state.isValidInput,
    );
    final l10n = context.l10n;
    return FilledButton(
      key: const Key('palindromeForm_checkButton'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: isValidInput
          ? () {
              context.read<PalindromeBloc>().add(
                const PalindromeEvent.checkPalindromePressed(),
              );
            }
          : null,
      child: Text(l10n.checkPalindromeBtn),
    );
  }
}
