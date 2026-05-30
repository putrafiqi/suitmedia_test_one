// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palindrome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PalindromeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PalindromeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PalindromeEvent()';
}


}

/// @nodoc
class $PalindromeEventCopyWith<$Res>  {
$PalindromeEventCopyWith(PalindromeEvent _, $Res Function(PalindromeEvent) __);
}


/// Adds pattern-matching-related methods to [PalindromeEvent].
extension PalindromeEventPatterns on PalindromeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NameChanged value)?  nameChanged,TResult Function( _PhraseChanged value)?  phraseChanged,TResult Function( _CheckPalindromePressed value)?  checkPalindromePressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _PhraseChanged() when phraseChanged != null:
return phraseChanged(_that);case _CheckPalindromePressed() when checkPalindromePressed != null:
return checkPalindromePressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NameChanged value)  nameChanged,required TResult Function( _PhraseChanged value)  phraseChanged,required TResult Function( _CheckPalindromePressed value)  checkPalindromePressed,}){
final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that);case _PhraseChanged():
return phraseChanged(_that);case _CheckPalindromePressed():
return checkPalindromePressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NameChanged value)?  nameChanged,TResult? Function( _PhraseChanged value)?  phraseChanged,TResult? Function( _CheckPalindromePressed value)?  checkPalindromePressed,}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _PhraseChanged() when phraseChanged != null:
return phraseChanged(_that);case _CheckPalindromePressed() when checkPalindromePressed != null:
return checkPalindromePressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  nameChanged,TResult Function( String value)?  phraseChanged,TResult Function()?  checkPalindromePressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.value);case _PhraseChanged() when phraseChanged != null:
return phraseChanged(_that.value);case _CheckPalindromePressed() when checkPalindromePressed != null:
return checkPalindromePressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  nameChanged,required TResult Function( String value)  phraseChanged,required TResult Function()  checkPalindromePressed,}) {final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that.value);case _PhraseChanged():
return phraseChanged(_that.value);case _CheckPalindromePressed():
return checkPalindromePressed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  nameChanged,TResult? Function( String value)?  phraseChanged,TResult? Function()?  checkPalindromePressed,}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.value);case _PhraseChanged() when phraseChanged != null:
return phraseChanged(_that.value);case _CheckPalindromePressed() when checkPalindromePressed != null:
return checkPalindromePressed();case _:
  return null;

}
}

}

/// @nodoc


class _NameChanged implements PalindromeEvent {
  const _NameChanged(this.value);
  

 final  String value;

/// Create a copy of PalindromeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameChangedCopyWith<_NameChanged> get copyWith => __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PalindromeEvent.nameChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NameChangedCopyWith<$Res> implements $PalindromeEventCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) _then) = __$NameChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(this._self, this._then);

  final _NameChanged _self;
  final $Res Function(_NameChanged) _then;

/// Create a copy of PalindromeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_NameChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PhraseChanged implements PalindromeEvent {
  const _PhraseChanged(this.value);
  

 final  String value;

/// Create a copy of PalindromeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhraseChangedCopyWith<_PhraseChanged> get copyWith => __$PhraseChangedCopyWithImpl<_PhraseChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhraseChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PalindromeEvent.phraseChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class _$PhraseChangedCopyWith<$Res> implements $PalindromeEventCopyWith<$Res> {
  factory _$PhraseChangedCopyWith(_PhraseChanged value, $Res Function(_PhraseChanged) _then) = __$PhraseChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$PhraseChangedCopyWithImpl<$Res>
    implements _$PhraseChangedCopyWith<$Res> {
  __$PhraseChangedCopyWithImpl(this._self, this._then);

  final _PhraseChanged _self;
  final $Res Function(_PhraseChanged) _then;

/// Create a copy of PalindromeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_PhraseChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckPalindromePressed implements PalindromeEvent {
  const _CheckPalindromePressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPalindromePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PalindromeEvent.checkPalindromePressed()';
}


}




/// @nodoc
mixin _$PalindromeState {

 NameInput get nameInput; PhraseInput get phraseInput; FormzSubmissionStatus get status; bool get isValidInput; bool get isPalindrome;
/// Create a copy of PalindromeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PalindromeStateCopyWith<PalindromeState> get copyWith => _$PalindromeStateCopyWithImpl<PalindromeState>(this as PalindromeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PalindromeState&&(identical(other.nameInput, nameInput) || other.nameInput == nameInput)&&(identical(other.phraseInput, phraseInput) || other.phraseInput == phraseInput)&&(identical(other.status, status) || other.status == status)&&(identical(other.isValidInput, isValidInput) || other.isValidInput == isValidInput)&&(identical(other.isPalindrome, isPalindrome) || other.isPalindrome == isPalindrome));
}


@override
int get hashCode => Object.hash(runtimeType,nameInput,phraseInput,status,isValidInput,isPalindrome);

@override
String toString() {
  return 'PalindromeState(nameInput: $nameInput, phraseInput: $phraseInput, status: $status, isValidInput: $isValidInput, isPalindrome: $isPalindrome)';
}


}

/// @nodoc
abstract mixin class $PalindromeStateCopyWith<$Res>  {
  factory $PalindromeStateCopyWith(PalindromeState value, $Res Function(PalindromeState) _then) = _$PalindromeStateCopyWithImpl;
@useResult
$Res call({
 NameInput nameInput, PhraseInput phraseInput, FormzSubmissionStatus status, bool isValidInput, bool isPalindrome
});




}
/// @nodoc
class _$PalindromeStateCopyWithImpl<$Res>
    implements $PalindromeStateCopyWith<$Res> {
  _$PalindromeStateCopyWithImpl(this._self, this._then);

  final PalindromeState _self;
  final $Res Function(PalindromeState) _then;

/// Create a copy of PalindromeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameInput = null,Object? phraseInput = null,Object? status = null,Object? isValidInput = null,Object? isPalindrome = null,}) {
  return _then(_self.copyWith(
nameInput: null == nameInput ? _self.nameInput : nameInput // ignore: cast_nullable_to_non_nullable
as NameInput,phraseInput: null == phraseInput ? _self.phraseInput : phraseInput // ignore: cast_nullable_to_non_nullable
as PhraseInput,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,isValidInput: null == isValidInput ? _self.isValidInput : isValidInput // ignore: cast_nullable_to_non_nullable
as bool,isPalindrome: null == isPalindrome ? _self.isPalindrome : isPalindrome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PalindromeState].
extension PalindromeStatePatterns on PalindromeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PalindromeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PalindromeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PalindromeState value)  $default,){
final _that = this;
switch (_that) {
case _PalindromeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PalindromeState value)?  $default,){
final _that = this;
switch (_that) {
case _PalindromeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NameInput nameInput,  PhraseInput phraseInput,  FormzSubmissionStatus status,  bool isValidInput,  bool isPalindrome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PalindromeState() when $default != null:
return $default(_that.nameInput,_that.phraseInput,_that.status,_that.isValidInput,_that.isPalindrome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NameInput nameInput,  PhraseInput phraseInput,  FormzSubmissionStatus status,  bool isValidInput,  bool isPalindrome)  $default,) {final _that = this;
switch (_that) {
case _PalindromeState():
return $default(_that.nameInput,_that.phraseInput,_that.status,_that.isValidInput,_that.isPalindrome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NameInput nameInput,  PhraseInput phraseInput,  FormzSubmissionStatus status,  bool isValidInput,  bool isPalindrome)?  $default,) {final _that = this;
switch (_that) {
case _PalindromeState() when $default != null:
return $default(_that.nameInput,_that.phraseInput,_that.status,_that.isValidInput,_that.isPalindrome);case _:
  return null;

}
}

}

/// @nodoc


class _PalindromeState implements PalindromeState {
  const _PalindromeState({this.nameInput = const NameInput.pure(), this.phraseInput = const PhraseInput.pure(), this.status = FormzSubmissionStatus.initial, this.isValidInput = false, this.isPalindrome = false});
  

@override@JsonKey() final  NameInput nameInput;
@override@JsonKey() final  PhraseInput phraseInput;
@override@JsonKey() final  FormzSubmissionStatus status;
@override@JsonKey() final  bool isValidInput;
@override@JsonKey() final  bool isPalindrome;

/// Create a copy of PalindromeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PalindromeStateCopyWith<_PalindromeState> get copyWith => __$PalindromeStateCopyWithImpl<_PalindromeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PalindromeState&&(identical(other.nameInput, nameInput) || other.nameInput == nameInput)&&(identical(other.phraseInput, phraseInput) || other.phraseInput == phraseInput)&&(identical(other.status, status) || other.status == status)&&(identical(other.isValidInput, isValidInput) || other.isValidInput == isValidInput)&&(identical(other.isPalindrome, isPalindrome) || other.isPalindrome == isPalindrome));
}


@override
int get hashCode => Object.hash(runtimeType,nameInput,phraseInput,status,isValidInput,isPalindrome);

@override
String toString() {
  return 'PalindromeState(nameInput: $nameInput, phraseInput: $phraseInput, status: $status, isValidInput: $isValidInput, isPalindrome: $isPalindrome)';
}


}

/// @nodoc
abstract mixin class _$PalindromeStateCopyWith<$Res> implements $PalindromeStateCopyWith<$Res> {
  factory _$PalindromeStateCopyWith(_PalindromeState value, $Res Function(_PalindromeState) _then) = __$PalindromeStateCopyWithImpl;
@override @useResult
$Res call({
 NameInput nameInput, PhraseInput phraseInput, FormzSubmissionStatus status, bool isValidInput, bool isPalindrome
});




}
/// @nodoc
class __$PalindromeStateCopyWithImpl<$Res>
    implements _$PalindromeStateCopyWith<$Res> {
  __$PalindromeStateCopyWithImpl(this._self, this._then);

  final _PalindromeState _self;
  final $Res Function(_PalindromeState) _then;

/// Create a copy of PalindromeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nameInput = null,Object? phraseInput = null,Object? status = null,Object? isValidInput = null,Object? isPalindrome = null,}) {
  return _then(_PalindromeState(
nameInput: null == nameInput ? _self.nameInput : nameInput // ignore: cast_nullable_to_non_nullable
as NameInput,phraseInput: null == phraseInput ? _self.phraseInput : phraseInput // ignore: cast_nullable_to_non_nullable
as PhraseInput,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,isValidInput: null == isValidInput ? _self.isValidInput : isValidInput // ignore: cast_nullable_to_non_nullable
as bool,isPalindrome: null == isPalindrome ? _self.isPalindrome : isPalindrome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
