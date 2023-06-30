import 'package:crm_sahel_telecom/config/palette.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

import '../api/service_api.dart';
import '../provider/auth_provider.dart';
import '../widget/acrylic_widget.dart';
import '../widget/windows_app_bar.dart';
import 'package:bilions_ui/bilions_ui.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var service = ServiceApi();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WindowsAppBar(),
        Expanded(
          child: AcrylicWidget(
            child: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 560.0,
                      width: 460.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 2.0,
                              offset: const Offset(1, 0))
                        ],
                      ),
                      child: Consumer<AuthProvider>(
                        builder: (context, value, child) => Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/banners.png"),
                              const SizedBox(height: 15.0),
                              const Text(
                                "Connexion",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 25.0),
                              TextBox(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                placeholder: 'E-mail',
                                expands: false,
                              ),
                              const SizedBox(height: 15.0),
                              PasswordBox(
                                controller: password,
                                placeholder: "Password",
                              ),
                              const SizedBox(height: 25.0),
                              SelectableText.rich(
                                  onTap: () {},
                                  TextSpan(
                                      text:
                                          "Vous n'avez pas encore de compte ? ",
                                      children: [
                                        TextSpan(
                                            text: "Contactez un admin ! ",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline))
                                      ])),
                              const SizedBox(height: 30.0),
                              Visibility(
                                  visible: value.connexionIsLoading!,
                                  child: Lottie.asset(
                                      'assets/lotties/loading.json',
                                      width: 200.0)),
                              Visibility(
                                  visible: !value.connexionIsLoading!,
                                  child: PrimaryButton(
                                    color: Palette.primaryColor,
                                    'Se connecter',
                                    width: 250.0,
                                    onPressed: () {
                                      if (email.text.isNotEmpty ||
                                          password.text.isNotEmpty) {
                                        service.connexion(
                                            context: context,
                                            email: email.text,
                                            password: password.text);
                                      } else {
                                        showDialog<String>(
                                          context: context,
                                          builder: (context) => ContentDialog(
                                            title: const Text("Erreur"),
                                            content: const Text(
                                              "Entrez un e-mail et un mot de passe svp!",
                                            ),
                                            actions: [
                                              FilledButton(
                                                child: const Text('Fermer'),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    },
                                  )),
                              const SizedBox(height: 35.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SelectableText.rich(
                                      onTap: () {},
                                      TextSpan(
                                          text: "Terme",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline))),
                                  const Text(" et  "),
                                  SelectableText.rich(
                                      onTap: () {},
                                      TextSpan(
                                          text: "Condition d'utilisation",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
