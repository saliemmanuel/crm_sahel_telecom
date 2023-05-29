import 'package:crm_sahel_telecom/config/palette.dart';
import 'package:crm_sahel_telecom/views/home.dart';
import 'package:crm_sahel_telecom/widget/route.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../widget/acrylic_widget.dart';
import '../widget/windows_app_bar.dart';
import 'package:bilions_ui/bilions_ui.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      height: 490.0,
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
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/banners.png"),
                            const SizedBox(height: 15.0),
                            const Text(
                              "Connexion",
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
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
                                              decoration:
                                                  TextDecoration.underline))
                                    ])),
                            const SizedBox(height: 35.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PrimaryButton(
                                  'Button Title',
                                  variant: Variant.success,
                                  onPressed: () {
                                    // do something
                                  },
                                ),
                                FilledButton(
                                    style: ButtonStyle(
                                        backgroundColor: ButtonState.all(
                                            Palette.primaryColor)),
                                    child: const Text('Connexion'),
                                    onPressed: () {}),
                              ],
                            ),
                            const SizedBox(height: 25.0),
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
