class AuthStore {
  static final Map<String, String> _users = {};
  static final Map<String, String> _userNames = {};
  static String? loggedInName;

  static bool register(String name, String email, String password) {
    if (_users.containsKey(email)) {
      return false;
    }
    _users[email] = password;
    _userNames[email] = name;
    return true;
  }

  static bool login(String email, String password) {
    if (_users.containsKey(email) && _users[email] == password) {
      loggedInName = _userNames[email] ?? 'Usuario';
      return true;
    }
    return false;
  }
}
