import 'package:flutter_test/flutter_test.dart';
import 'package:test_automation_demo/src/user_repo.dart';

class FakeUserRepo implements UserRepo {
  @override
  Future<String> fetchUserName() async => 'Thiha';
}

void main() {
  test('greeting() uses repo name', () async {
    final service = UserService(FakeUserRepo());

    final text = await service.greeting();

    expect(text, 'Hello, Thiha!');
  });
}
