import 'package:change_lang_by_library/ProviderControler/lang_controler.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'lang_change_homescreen.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LangController controller = context.read<LangController>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black26,
        title: const Text('Languages').tr(),
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'lang_desc'.tr(),
                style: GoogleFonts.nunito(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPress: () {
                  context.setLocale(
                    const Locale('en', 'US'),
                  );
                  controller.onLangChange();
                },
                text: 'lang_btn_eng'.tr(),
              ),
              const SizedBox(height: 10),
              CustomButton(
                onPress: () {
                  context.setLocale(
                    const Locale('hi', 'IN'),
                  );
                  controller.onLangChange();
                },
                text: 'lang_btn_hindi'.tr(),
              ),
              const SizedBox(height: 10),
              CustomButton(
                onPress: () {
                  context.setLocale(
                    const Locale('gu', 'IN'),
                  );
                  controller.onLangChange();
                },
                text: 'lang_btn_guj'.tr(),
              ),
              const SizedBox(height: 10),
              CustomButton(
                onPress: () {
                  context.setLocale(
                    const Locale('ta', 'IN'),
                  );
                  controller.onLangChange();
                },
                text: 'lang_btn_tamil'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
