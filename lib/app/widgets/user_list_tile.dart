import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:suitmedia_test_one/app/models/models.dart';

class UserListTile extends StatelessWidget {
  const UserListTile(this.data, {super.key, this.onTap, this.selected});

  final User data;

  final bool? selected;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      selected: selected ?? false,
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: colorScheme.primaryFixed,
        foregroundImage: NetworkImage(data.avatarUrl),
        child: Icon(
          RemixIcons.user_3_line,
          color: colorScheme.onPrimaryFixed,
        ),
      ),
      title: Text(data.fullName),
      subtitle: Text(data.email),
    );
  }
}
