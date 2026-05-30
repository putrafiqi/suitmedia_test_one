import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_test_one/app/app.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const UserListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listenWhen: (previous, current) =>
          previous.status != current.status &&
          current.status == UserStatus.failure,
      listener: (context, state) {
        final l10n = context.l10n;
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(l10n.somethingWentWrong),
            ),
          );
      },
      child: const _UserListView(),
    );
  }
}

class _UserListView extends StatefulWidget {
  const _UserListView();

  @override
  State<_UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<_UserListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<UserBloc>().add(const UserEvent.getUsersRequested());
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<UserBloc>().add(const UserEvent.getUsersRequested());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.userListTitle),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<UserBloc>().add(
              const UserEvent.refreshUsersRequested(),
            );

            await Future<void>.delayed(const Duration(seconds: 1));
          },
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.status == UserStatus.initial) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.status == UserStatus.success && state.users.isEmpty) {
                return Center(child: Text(l10n.noUsers));
              }

              return ListView.builder(
                controller: _scrollController,
                itemCount: state.hasReachedMax
                    ? state.users.length
                    : state.users.length + 1,
                itemBuilder: (context, index) {
                  if (index >= state.users.length) {
                    return const BottomLoader();
                  }
                  return UserListTile(
                    state.users[index],
                    selected: state.selectedUser == state.users[index],
                    onTap: () {
                      context.read<UserBloc>().add(
                        UserEvent.userSelected(state.users[index]),
                      );
                      Navigator.of(context).pop();
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(strokeWidth: 1.5),
        ),
      ),
    );
  }
}
