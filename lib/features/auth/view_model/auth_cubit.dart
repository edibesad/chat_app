import 'package:chat_app/features/auth/view_model/state/auth_state.dart';

import '../../../core/base/base_cubit.dart';

class AuthCubit extends BaseCubit<AuthState> {
  AuthCubit() : super(const AuthState());

  void changeLoading({bool? isLoading}) {
    emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));
  }
}
