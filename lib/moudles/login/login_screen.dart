import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_template/app/ext/context_ext.dart';
import 'package:flutter_riverpod_template/app_router.dart';
import 'package:flutter_riverpod_template/components/widgets/btn_widget/btn_widget.dart';

import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  LoginScreenState({this.title = ""});

  late SharedPreferences prefs;

  String? currentUser;
  String title;
  bool isSentCode = false;
  int waitResendCount = 0;

  @override
  void initState() {
    print("3. login 当前的时间为--${DateTime.now().millisecondsSinceEpoch}");
    super.initState();
  }

  final phoneFieldController = TextEditingController();
  final codeFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                _buildLogo(),
                _buildSlogan(),
                _buildInputAccount(),
                _buildInputPwd(),
                _buildLoginBtn(context),
                _buildRegister(),
              ],
            ),
            _buildProtocol()
          ],
        ),
      ),
    );
  }

  Padding _buildSlogan() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Center(
          child: Text(
            context.loc.slogan,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Padding _buildRegister() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22.5, 15, 22.5, 0),
      child: Consumer(
        builder: (context, ref, child) {
          return Center(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                context.loc.register,
              ),
            ),
          );
        },
      ),
    );
  }

  Padding _buildLoginBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22.5, 20, 22.5, 0),
      child: Consumer(
        builder: (context, ref, child) {
          return buildBtnWidget(context.loc.login, () {
            String phoneNum = phoneFieldController.value.text;
            String code = codeFieldController.value.text;
            if (phoneNum.isNotEmpty && code.isNotEmpty) {
              ///TODO 请求网络
            } else {}
          });
        },
      ),
    );
  }

  Padding _buildInputPwd() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22.5, 20, 22.5, 0),
      child: Row(
        children: [
          Expanded(
            child: CupertinoTextField(
              maxLength: 20,
              prefix: Padding(
                padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
              ),
              obscureText: true,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.5), // 设置圆角
              ),
              placeholder: context.loc.inputPwd,
              controller: codeFieldController,
              clearButtonMode: OverlayVisibilityMode.editing,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              autocorrect: false,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildInputAccount() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22.5, 46, 22.5, 0),
      child: CupertinoTextField(
        maxLength: 20,
        prefix: Padding(
          padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27.5), // 设置圆角
        ),
        placeholder: context.loc.inputAccount,

        controller: phoneFieldController,
        // keyboardType: TextInputType.phone,
        clearButtonMode: OverlayVisibilityMode.editing,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        autocorrect: false,
      ),
    );
  }

  Padding _buildLogo() {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 80, 8, 10),
    );
  }

  Positioned _buildProtocol() {
    return Positioned(
        bottom: 30,
        left: 0,
        right: 0,
        child: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                ),
                SizedBox(
                  width: 6,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: context.loc.read_agree,
                      style: const TextStyle(),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // 在此处处理用户点击用户协议的逻辑，比如打开WebView
                          print('用户协议被点击');
                        },
                    ),
                    TextSpan(
                      text: context.loc.user_protocol,
                      style: const TextStyle(),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // 在此处处理用户点击用户协议的逻辑，比如打开WebView
                          print('用户协议被点击');
                        },
                    ),
                    TextSpan(
                      text: context.loc.and,
                    ),
                    TextSpan(
                      text: context.loc.privacy_protocol,
                      style: const TextStyle(),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // 在此处处理用户点击隐私政策的逻辑，比如打开WebView
                          print('隐私政策被点击');
                        },
                    )
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
