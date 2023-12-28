import 'package:flutter/material.dart';

import '../../../core/base/base_state.dart';
import 'mixin/auth_view_mixin.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends BaseState<AuthView> with AuthViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
