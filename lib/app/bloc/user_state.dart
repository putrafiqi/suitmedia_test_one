part of 'user_bloc.dart';

enum UserStatus { initial, loading, success, failure }

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(UserStatus.initial) UserStatus status,
    @Default([]) List<User> users,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    String? errorMessage,
    User? selectedUser,
  }) = _UserState;
}
