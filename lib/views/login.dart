import 'package:crm_sahel_telecom/views/home.dart';
import 'package:crm_sahel_telecom/widget/route.dart';
import 'package:crm_sahel_telecom/widget/widget.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../widget/acrylic_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return BodyApp(
      child: AcrylicWidget(
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 450.0,
                  width: 360.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2.0,
                          offset: const Offset(1, 0))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/banners.png"),
                        const SizedBox(height: 25.0),
                        const Text(
                          "Connexion",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 25.0),
                        const TextBox(
                          keyboardType: TextInputType.emailAddress,
                          placeholder: 'E-mail',
                          expands: false,
                        ),
                        const SizedBox(height: 15.0),
                        const PasswordBox(
                          placeholder: "Password",
                          revealMode: PasswordRevealMode.hidden,
                        ),
                        const SizedBox(height: 25.0),
                        SelectableText.rich(
                            onTap: () {},
                            TextSpan(
                                text: "Vous n'avez pas encore de compte ? ",
                                children: [
                                  TextSpan(
                                      text: "Contactez un admin ! ",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline))
                                ])),
                        const SizedBox(height: 35.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FilledButton(
                              child: const Text('Connexion'),
                              onPressed: () =>
                                  pushNewPageRemoveUntil(const Home(), context),
                            ),
                            const SizedBox(width: 25.0),
                            FilledButton(
                              style: ButtonStyle(
                                  backgroundColor: ButtonState.all(Colors.red)),
                              child: const Text('Annuler'),
                              onPressed: () => debugPrint('pressed button'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
                Container(
                  alignment: Alignment.center,
                  height: 45.0,
                  width: 360.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 1.0,
                          offset: const Offset(0, 0))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText.rich(
                          onTap: () {},
                          TextSpan(
                              text: "Terme",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline))),
                      const Text(" et  "),
                      SelectableText.rich(
                          onTap: () {},
                          TextSpan(
                              text: "Condition d'utilisation",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
