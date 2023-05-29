import 'package:fluent_ui/fluent_ui.dart';

class AuthProvider extends ChangeNotifier {
  bool _connexionIsLoading = false;

  bool? get connexionIsLoading => _connexionIsLoading;

  changeValConnexionIsLoading(bool val) {
    _connexionIsLoading = val;
    ChangeNotifier();
  }
}
