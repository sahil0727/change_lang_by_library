import 'package:change_lang_by_library/ProviderControler/lang_controler.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'languages.dart';

/*
using library : easy_localization
https://pub.dev/packages/easy_localization
Youtube : https://www.youtube.com/watch?v=0S103wExUaE
*/

class LangChangeHomeScreen extends StatelessWidget {
  const LangChangeHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<LangController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0.0,
        title: Text(
          'Easy Localization',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('My Coding Area'),
              const SizedBox(height: 10),
              Text(
                'home_desc'.tr(),
                style: GoogleFonts.poly(
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 50,
                child: CustomButton(
                  text: 'home_btn_text'.tr(),
                  onPress: () => Future.delayed(
                    const Duration(
                      milliseconds: 100,
                    ),
                  ).then(
                    (value) => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const Languages(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  const CustomButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.4,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        ),
        onPressed: onPress,
        child: Text(text),
      ),
    );
  }
}
