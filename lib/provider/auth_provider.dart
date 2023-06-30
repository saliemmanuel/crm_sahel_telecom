import 'package:crm_sahel_telecom/Models/users.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AuthProvider extends ChangeNotifier {
  bool _connexionIsLoading = false;
  Users? _users;

  bool? get connexionIsLoading => _connexionIsLoading;
  Users? get users => _users;

  changeValConnexionIsLoading(bool val) {
    _connexionIsLoading = val;
    notifyListeners();
  }

  saveUserData(Users? users) {
    _users = users;
    notifyListeners();
  }
}
