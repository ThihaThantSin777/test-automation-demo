import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_automation_demo/src/user_repo.dart';

class MockUserRepo extends Mock implements UserRepo {}

void main() {
  late MockUserRepo repo;
  late UserService service;

  setUp(() {
    repo = MockUserRepo();
    service = UserService(repo);
  });

  test('greeting() uses repo name', () async {
    when(() => repo.fetchUserName()).thenAnswer((_) async => 'Thiha');

    final text = await service.greeting();
    expect(text, 'Hello, Thiha!');
    verify(() => repo.fetchUserName()).called(1);
  });
}
