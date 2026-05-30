import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:remixicon/remixicon.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';
import 'package:suitmedia_test_one/palindrome/bloc/palindrome_bloc.dart';
import 'package:suitmedia_test_one/palindrome/views/palindrome_form.dart';

class PalindromePage extends StatelessWidget {
  const PalindromePage({super.key});

  void _showResultDialog(BuildContext context, PalindromeState state) {
    unawaited(
      showDialog(
        context: context,
        builder: (context) {
          final l10n = context.l10n;
          return AlertDialog(
            title: Text(l10n.palindromeResultTitle),
            content: Text(
              state.isPalindrome
                  ? l10n.palindromeResultMessage(state.nameInput.value)
                  : l10n.notPalindromeResultMessage(state.nameInput.value),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(l10n.okBtn),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PalindromeBloc(),
      child: BlocListener<PalindromeBloc, PalindromeState>(
        listenWhen: (previous, current) =>
            previous.status != current.status && current.status.isSuccess,
        listener: _showResultDialog,
        child: const _PalindromeView(),
      ),
    );
  }
}

class _PalindromeView extends StatelessWidget {
  const _PalindromeView();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundColor: colorScheme.surfaceContainerHigh,
                  child: Icon(
                    RemixIcons.user_add_line,
                    size: 32,
                    color: colorScheme.onSurface,
                  ),
                ),

                const PalindromeForm(),

                FilledButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(l10n.nextBtn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
