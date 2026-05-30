import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remixicon/remixicon.dart';
import 'package:suitmedia_test_one/app/app.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';
import 'package:suitmedia_test_one/settings/views/user_list_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({required this.name, super.key});

  final String name;

  static Route<void> route({required String name}) {
    return MaterialPageRoute<void>(
      builder: (_) => SettingsPage(name: name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _SettingsView(name: name);
  }
}

class _SettingsView extends StatelessWidget {
  const _SettingsView({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(l10n.welcome),
                subtitle: Text(name.isEmpty ? '-' : name),
                leading: CircleAvatar(
                  backgroundColor: colorScheme.primaryFixed,
                  child: Icon(
                    RemixIcons.user_3_line,
                    color: colorScheme.onPrimaryFixed,
                  ),
                ),
              ),

              const Divider(),

              BlocSelector<UserBloc, UserState, User?>(
                selector: (state) {
                  return state.selectedUser;
                },
                builder: (context, selectedUser) {
                  if (selectedUser == null) {
                    return FilledButton(
                      onPressed: () {
                        unawaited(
                          Navigator.of(
                            context,
                          ).push(UserListPage.route()),
                        );
                      },
                      child: Text(l10n.chooseAUserBtn),
                    );
                  }
                  return UserListTile(
                    selectedUser,
                    onTap: () {
                      unawaited(
                        Navigator.of(
                          context,
                        ).push(UserListPage.route()),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
