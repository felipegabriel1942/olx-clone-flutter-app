import 'package:mobx/mobx.dart';

import '../helpers/extensions.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();
  String get emailError {
    if (email == null || emailValid) {
      return null;
    } else {
      return 'E-mail inválido';
    }
  }

  @observable
  String password;

  @action
  void setPassword(String value) => password = value;

  @computed
  bool get passwordValid => password != null && password.length >= 6;
  String get passwordError {
    if (password == null || passwordValid) {
      return null;
    } else {
      return 'Senha muito curta';
    }
  }

  @computed
  Function get loginPressed => emailValid && passwordValid && !loading ? _login : null;

  @observable
  bool loading = false;

  @action
  Future<void> _login() async {

    loading = true;

    await Future.delayed(Duration(seconds: 3));

    loading = false;

  }
}
