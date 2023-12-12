import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'widget/home_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Change Language',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ProductLocalization.updateLanguage(
                      context: context,
                      value: Locales.en,
                    );
                  },
                  child: const Text(LocaleKeys.general_button_save).tr(),
                ),
                ElevatedButton(
                  onPressed: () {
                    ProductLocalization.updateLanguage(
                      context: context,
                      value: Locales.tr,
                    );
                  },
                  child: const Text(LocaleKeys.general_button_save).tr(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
