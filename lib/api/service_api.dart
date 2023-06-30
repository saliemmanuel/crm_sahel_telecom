import 'dart:convert';

import 'package:bilions_ui/bilions_ui.dart';
import 'package:crm_sahel_telecom/Models/users.dart';
import 'package:crm_sahel_telecom/provider/auth_provider.dart';
import 'package:crm_sahel_telecom/views/home.dart';
import 'package:crm_sahel_telecom/widget/dialogue.dart';
import 'package:crm_sahel_telecom/widget/route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

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
      Provider.of<AuthProvider>(context, listen: false)
          .changeValConnexionIsLoading(true);
      if (isEmail(email!)) {
        var data = await http.post(
            host.baseUrl(endpoint: "utilisateur/connexion"),
            body: {"EMAIL": email, 'MOTDEPASSE': password});
        var response = await jsonDecode(data.body);
        if (data.statusCode > 201) {
          Provider.of<AuthProvider>(context, listen: false)
              .changeValConnexionIsLoading(false);
          alertDialogue(context,
              title: "Erreur", content: "Une erreur s'est produit");
        }

        if (data.statusCode == 200) {
          Provider.of<AuthProvider>(context, listen: false)
              .changeValConnexionIsLoading(false);
          var user = Users(
              ID: response['utilisateur']['ID'].toString(),
              EMAIL: response['utilisateur']['EMAIL'],
              NOM: response['utilisateur']['NOM'],
              PHOTO: response['utilisateur']['PHOTO'],
              UROLE: response['utilisateur']['UROLE'].toString(),
              ACTIVE: response['utilisateur']['ACTIVE'].toString(),
              NUMEROTELEPHONE: response['utilisateur']['NUMEROTELEPHONE']);
          Provider.of<AuthProvider>(context, listen: false).saveUserData(user);
          pushNewPageRemoveUntil(const Home(), context);
        }
      } else {
        Provider.of<AuthProvider>(context, listen: false)
            .changeValConnexionIsLoading(false);
        alertDialogue(context, title: "Erreur", content: "E-mail incorrect");
      }
    } catch (e) {
      print(e);
    }
  }
}
