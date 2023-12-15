import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_appbar.dart';

@RoutePage()

///
final class HomeView extends StatefulWidget {
  ///
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
            Assets.lottie.animZombie.lottie(
              package: 'gen',
            ),
            Assets.images.imgFlags.image(
              package: 'gen',
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                AppEnvironmentItems.baseUrl.value,
              ),
            ),
            const Text(
              'Change Language',
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(
                  HomeDetailRoute(
                    id: '7',
                  ),
                );
              },
              child: const Text('Geri Dön'),
            ),
            /* Row(
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
            ), */
          ],
        ),
      ),
    );
  }
}
