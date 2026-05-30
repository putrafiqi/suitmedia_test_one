// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUsersRequested value)?  getUsersRequested,TResult Function( _UserSelected value)?  userSelected,TResult Function( _RefreshUsersRequested value)?  refreshUsersRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUsersRequested() when getUsersRequested != null:
return getUsersRequested(_that);case _UserSelected() when userSelected != null:
return userSelected(_that);case _RefreshUsersRequested() when refreshUsersRequested != null:
return refreshUsersRequested(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUsersRequested value)  getUsersRequested,required TResult Function( _UserSelected value)  userSelected,required TResult Function( _RefreshUsersRequested value)  refreshUsersRequested,}){
final _that = this;
switch (_that) {
case _GetUsersRequested():
return getUsersRequested(_that);case _UserSelected():
return userSelected(_that);case _RefreshUsersRequested():
return refreshUsersRequested(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUsersRequested value)?  getUsersRequested,TResult? Function( _UserSelected value)?  userSelected,TResult? Function( _RefreshUsersRequested value)?  refreshUsersRequested,}){
final _that = this;
switch (_that) {
case _GetUsersRequested() when getUsersRequested != null:
return getUsersRequested(_that);case _UserSelected() when userSelected != null:
return userSelected(_that);case _RefreshUsersRequested() when refreshUsersRequested != null:
return refreshUsersRequested(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getUsersRequested,TResult Function( User user)?  userSelected,TResult Function()?  refreshUsersRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUsersRequested() when getUsersRequested != null:
return getUsersRequested();case _UserSelected() when userSelected != null:
return userSelected(_that.user);case _RefreshUsersRequested() when refreshUsersRequested != null:
return refreshUsersRequested();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getUsersRequested,required TResult Function( User user)  userSelected,required TResult Function()  refreshUsersRequested,}) {final _that = this;
switch (_that) {
case _GetUsersRequested():
return getUsersRequested();case _UserSelected():
return userSelected(_that.user);case _RefreshUsersRequested():
return refreshUsersRequested();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getUsersRequested,TResult? Function( User user)?  userSelected,TResult? Function()?  refreshUsersRequested,}) {final _that = this;
switch (_that) {
case _GetUsersRequested() when getUsersRequested != null:
return getUsersRequested();case _UserSelected() when userSelected != null:
return userSelected(_that.user);case _RefreshUsersRequested() when refreshUsersRequested != null:
return refreshUsersRequested();case _:
  return null;

}
}

}

/// @nodoc


class _GetUsersRequested implements UserEvent {
  const _GetUsersRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.getUsersRequested()';
}


}




/// @nodoc


class _UserSelected implements UserEvent {
  const _UserSelected(this.user);
  

 final  User user;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSelectedCopyWith<_UserSelected> get copyWith => __$UserSelectedCopyWithImpl<_UserSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSelected&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserEvent.userSelected(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserSelectedCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UserSelectedCopyWith(_UserSelected value, $Res Function(_UserSelected) _then) = __$UserSelectedCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class __$UserSelectedCopyWithImpl<$Res>
    implements _$UserSelectedCopyWith<$Res> {
  __$UserSelectedCopyWithImpl(this._self, this._then);

  final _UserSelected _self;
  final $Res Function(_UserSelected) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UserSelected(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _RefreshUsersRequested implements UserEvent {
  const _RefreshUsersRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshUsersRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.refreshUsersRequested()';
}


}




/// @nodoc
mixin _$UserState {

 UserStatus get status; List<User> get users; bool get hasReachedMax; int get currentPage; String? get errorMessage; User? get selectedUser;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(users),hasReachedMax,currentPage,errorMessage,selectedUser);

@override
String toString() {
  return 'UserState(status: $status, users: $users, hasReachedMax: $hasReachedMax, currentPage: $currentPage, errorMessage: $errorMessage, selectedUser: $selectedUser)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 UserStatus status, List<User> users, bool hasReachedMax, int currentPage, String? errorMessage, User? selectedUser
});


$UserCopyWith<$Res>? get selectedUser;

}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? users = null,Object? hasReachedMax = null,Object? currentPage = null,Object? errorMessage = freezed,Object? selectedUser = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedUser: freezed == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get selectedUser {
    if (_self.selectedUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.selectedUser!, (value) {
    return _then(_self.copyWith(selectedUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserStatus status,  List<User> users,  bool hasReachedMax,  int currentPage,  String? errorMessage,  User? selectedUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.status,_that.users,_that.hasReachedMax,_that.currentPage,_that.errorMessage,_that.selectedUser);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserStatus status,  List<User> users,  bool hasReachedMax,  int currentPage,  String? errorMessage,  User? selectedUser)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.status,_that.users,_that.hasReachedMax,_that.currentPage,_that.errorMessage,_that.selectedUser);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserStatus status,  List<User> users,  bool hasReachedMax,  int currentPage,  String? errorMessage,  User? selectedUser)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.status,_that.users,_that.hasReachedMax,_that.currentPage,_that.errorMessage,_that.selectedUser);case _:
  return null;

}
}

}

/// @nodoc


class _UserState implements UserState {
  const _UserState({this.status = UserStatus.initial, final  List<User> users = const [], this.hasReachedMax = false, this.currentPage = 1, this.errorMessage, this.selectedUser}): _users = users;
  

@override@JsonKey() final  UserStatus status;
 final  List<User> _users;
@override@JsonKey() List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  int currentPage;
@override final  String? errorMessage;
@override final  User? selectedUser;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_users),hasReachedMax,currentPage,errorMessage,selectedUser);

@override
String toString() {
  return 'UserState(status: $status, users: $users, hasReachedMax: $hasReachedMax, currentPage: $currentPage, errorMessage: $errorMessage, selectedUser: $selectedUser)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 UserStatus status, List<User> users, bool hasReachedMax, int currentPage, String? errorMessage, User? selectedUser
});


@override $UserCopyWith<$Res>? get selectedUser;

}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? users = null,Object? hasReachedMax = null,Object? currentPage = null,Object? errorMessage = freezed,Object? selectedUser = freezed,}) {
  return _then(_UserState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedUser: freezed == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get selectedUser {
    if (_self.selectedUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.selectedUser!, (value) {
    return _then(_self.copyWith(selectedUser: value));
  });
}
}

// dart format on
