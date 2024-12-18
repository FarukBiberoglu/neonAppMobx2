import 'package:mobx/mobx.dart';
part 'security_store.g.dart';

class SecurityStore = _SecurityStoreBase with _$SecurityStore;

abstract class _SecurityStoreBase with Store {
  @observable
  bool isSecurityActive = false;

  @action
  void toggleSecurity() {
    isSecurityActive = !isSecurityActive;
  }
}
