abstract class UserRepo {
  Future<String> fetchUserName();
}

class UserService {
  final UserRepo repo;
  UserService(this.repo);

  Future<String> greeting() async {
    final name = await repo.fetchUserName();
    return name;
  }
}
