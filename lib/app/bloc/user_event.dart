part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getUsersRequested() = _GetUsersRequested;
  const factory UserEvent.userSelected(User user) = _UserSelected;
  const factory UserEvent.refreshUsersRequested() = _RefreshUsersRequested;
}
