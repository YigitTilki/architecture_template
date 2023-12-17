// ignore_for_file: public_member_api_docs

import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:architecture_template/product/widgets/project_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

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
    const url =
        'https://imageio.forbes.com/specials-images/imageserve/6090f7f251c9c6c605e612fc/Darth-Vader/0x0.jpg?format=jpg&crop=3127,1759,x0,y33,safe&width=1440';

    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdaptAllView(
                phone: Text(''.ext.version),
                tablet: Text(''.ext.buildNumber),
                desktop: Text(''.ext.appName),
              ),
              Text(''.ext.version),
              Image.network(
                ''.ext.randomImage,
                fit: BoxFit.contain,
              ),
              FloatingActionButton(
                onPressed: () {
                  'Çorlu'.ext.launchMaps();
                },
                child: const Text('Maps'),
              ),
              /*  FloatingActionButton(
                onPressed: () {
                  final dummyUsers = List<Users?>.generate(
                    10,
                    (index) => Users(
                      name: 'User $index',
                      money: index * 100,
                    ),
                  );
                  final items = dummyUsers
                      .where((element) {
                        if (element?.money == null) return false;
                        return element!.money > 500;
                      })
                      .exts
                      .makeSafeCustom(
                        (value) => value?.name.ext.isNotNullOrNoEmpty ?? false,
                      );
                },
                child: const Text('List'),
              ), */
              const ProjectNetworkImage(
                url: url,
              ),
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
      ),
    );
  }
}

class Users {
  Users({required this.name, required this.money});

  final String name;
  final int money;
}
