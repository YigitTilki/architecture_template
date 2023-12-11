import 'package:easy_localization/easy_localization.dart';

final class ProductLocalization extends EasyLocalization {
  ProductLocalization({required super.child, super.key})
      : super(
          supportedLocales: const [],
          path: "asset/translations",
        );
}
