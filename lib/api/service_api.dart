import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';

import 'host.dart';
import 'package:http/http.dart' as http;

class ServiceApi {
  var host = Host();
  bool isEmail(String email) {
    String p =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(email);
  }

  connexion({String? email, String? password, var context}) async {
    try {
      if (isEmail(email!)) {
        var data = await http.post(
            host.baseUrl(endpoint: "utilisateur/connexion"),
            body: {"EMAIL": email, 'MOTDEPASSE': password});
        var response = await jsonDecode(data.body);
        if (data.statusCode > 201) {
          Navigator.pop(context);
          return false;
        }
        if (data.statusCode == 200) {
          Navigator.pop(context);
          return true;
        }
      } else {
        return false;
      }
    } catch (e) {
      // errorDialogueCard("Erreur",
      //         'Connexion perdue, verifier votre connexion internet', context)
      //     .then((value) => Navigator.pop(context));
      return false;
    }
  }
}
