// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SecurityStore on _SecurityStoreBase, Store {
  late final _$isSecurityActiveAtom =
      Atom(name: '_SecurityStoreBase.isSecurityActive', context: context);

  @override
  bool get isSecurityActive {
    _$isSecurityActiveAtom.reportRead();
    return super.isSecurityActive;
  }

  @override
  set isSecurityActive(bool value) {
    _$isSecurityActiveAtom.reportWrite(value, super.isSecurityActive, () {
      super.isSecurityActive = value;
    });
  }

  late final _$_SecurityStoreBaseActionController =
      ActionController(name: '_SecurityStoreBase', context: context);

  @override
  void toggleSecurity() {
    final _$actionInfo = _$_SecurityStoreBaseActionController.startAction(
        name: '_SecurityStoreBase.toggleSecurity');
    try {
      return super.toggleSecurity();
    } finally {
      _$_SecurityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSecurityActive: ${isSecurityActive}
    ''';
  }
}
