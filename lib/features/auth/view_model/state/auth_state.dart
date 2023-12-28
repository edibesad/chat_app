import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final bool isLoading;
  const AuthState({this.isLoading = false});

  @override
  List<Object?> get props => [isLoading];

  AuthState copyWith({bool? isLoading}) {
    return AuthState(isLoading: isLoading ?? false);
  }
}
