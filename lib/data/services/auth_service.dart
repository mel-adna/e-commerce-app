import '../../core/models/user.dart';

class MockAuthService {
  // Simulate database user store
  final Map<String, User> _users = {};

  Future<User> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 1000)); // Simulate delay

    // Mock validation
    if (email.contains('@') && password.length >= 6) {
      // Return a dummy user or existing one
      return const User(
        id: '123',
        email: 'user@example.com',
        name: 'Test User',
      );
    } else {
      throw Exception('Invalid credentials');
    }
  }

  Future<User> register(String name, String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    if (email.contains('@') && password.length >= 6) {
      final newUser = User(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        email: email,
        name: name,
      );
      _users[email] = newUser;
      return newUser;
    } else {
      throw Exception('Invalid inputs');
    }
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
