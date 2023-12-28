import 'package:chat_app/core/base/base_state.dart';
import 'package:chat_app/features/auth/view/auth_view.dart';
import 'package:chat_app/features/auth/view_model/auth_cubit.dart';

mixin AuthViewMixin on BaseState<AuthView> {
  late final AuthCubit _authCubit;

  AuthCubit get authCubit => _authCubit;

  @override
  void initState() {
    super.initState();
    _authCubit = AuthCubit();
  }
}
