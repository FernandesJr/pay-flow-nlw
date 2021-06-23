import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_text_style.dart';
import 'package:pay_flow/shared/widgets/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            //Cabeçalho laranja
            Container(
              color: AppColors.primary,
              height: size.height * 0.40,
            ),
            //Imagem da pessoa
            Positioned(
                left: 0,
                right: 0,
                top: 40,
                child: Image.asset(AppImages.person, height: 300, width: 208)),
            //Mini logo, texto e botão
            Positioned(
                left: 0,
                right: 0,
                bottom: size.height * 0.12,
                child: Column(
                  children: [
                    //MiniLogo
                    Image.asset(AppImages.logomini),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, right: 70),
                      //Título
                      child: Text(
                        "Organize seus boletos em um só lugar",
                        style: TextStyles.titleHome,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, right: 40, left: 40),
                      child: SocialLoginButton(onTap: () {
                        print("Clicou");
                      }),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
