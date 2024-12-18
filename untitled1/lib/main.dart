import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart'; // MobX Observer'ı import ediyoruz.
import 'security_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecurityScreen(),
    );
  }
}

class SecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final securityStore = SecurityStore();

    return Scaffold(
      appBar: AppBar(title: const Text("Astronaut Security App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) {
                return Text(
                  'Security is ${securityStore.isSecurityActive ? "Active" : "Inactive"}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => securityStore.toggleSecurity(),
              child: const Text('Toggle Security'),
            ),
          ],
        ),
      ),
    );
  }
}
