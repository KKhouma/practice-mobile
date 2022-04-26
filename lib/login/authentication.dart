var _nama = ["Roni"];
var _username = ["username"];
var _password = ["password123"];
int _i = 1;

class Authentication {
  bool fetchCredentials(String username, String password) {
    for (var j = 0; j < _username.length; j++) {
      if (username == _username[j] && password == _password[j]) {
        return true;
      }
    }
    return false;
  }
}