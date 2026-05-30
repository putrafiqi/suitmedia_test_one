import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suitmedia_test_one/app/models/models.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required Dio dio}) : _dio = dio, super(const UserState()) {
    on<_GetUsersRequested>(_onGetUsersRequested);
    on<_UserSelected>(_onUserSelected);
    on<_RefreshUsersRequested>(_onRefreshUsersRequested);
  }

  final Dio _dio;

  Future<void> _onGetUsersRequested(
    _GetUsersRequested event,
    Emitter<UserState> emit,
  ) async {
    if (state.hasReachedMax) return;

    try {
      if (state.status == UserStatus.initial) {
        final (users, totalPages) = await _getUsers(page: 1);
        return emit(
          state.copyWith(
            status: UserStatus.success,
            users: users,
            hasReachedMax: 1 >= totalPages,
            currentPage: 1,
          ),
        );
      }

      final nextPage = state.currentPage + 1;
      final (users, totalPages) = await _getUsers(page: nextPage);
      emit(
        users.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
                status: UserStatus.success,
                users: List.of(state.users)..addAll(users),
                hasReachedMax: nextPage >= totalPages,
                currentPage: nextPage,
              ),
      );
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: UserStatus.failure,
          errorMessage: e.message,
        ),
      );
    }
  }

  Future<void> _onRefreshUsersRequested(
    _RefreshUsersRequested event,
    Emitter<UserState> emit,
  ) async {
    try {
      final (users, totalPages) = await _getUsers(page: 1);
      emit(
        state.copyWith(
          status: UserStatus.success,
          users: users,
          hasReachedMax: 1 >= totalPages,
          currentPage: 1,
        ),
      );
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: UserStatus.failure,
          errorMessage: e.message,
        ),
      );
    }
  }

  void _onUserSelected(
    _UserSelected event,
    Emitter<UserState> emit,
  ) {
    emit(state.copyWith(selectedUser: event.user));
  }

  Future<(List<User>, int)> _getUsers({required int page}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/users',
      queryParameters: {'page': page, 'per_page': 10},
    );
    final data = response.data!['data'] as List;

    final totalPages = response.data!['total_pages'] as int;

    return (
      data.map((json) => User.fromJson(json as Map<String, dynamic>)).toList(),
      totalPages,
    );
  }
}
