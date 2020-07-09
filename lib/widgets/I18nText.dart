import 'dart:ui' as ui show TextHeightBehavior;
import 'package:flutter/widgets.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class I18nText extends StatelessWidget {
  final String _key;
  final Text child;
  final String fallbackKey;
  final Map<String, String> translationParams;
  static const _default_text = Text("");

  I18nText(
    this._key, {
    this.child = _default_text,
    this.fallbackKey,
    this.translationParams,
  }) : assert(
          _key != null,
          'A non-null String must be provided to an I18nText widget.',
        );

  I18nText.standalone(
    this._key, {
    this.fallbackKey,
    this.translationParams,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
  })  : this.child = Text(
          "",
          key: key,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        ),
        assert(
          _key != null,
          'A non-null String must be provided to a I18nText widget.',
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      FlutterI18n.translate(context, _key,
          fallbackKey: fallbackKey, translationParams: translationParams),
      key: child.key,
      style: child.style,
      strutStyle: child.strutStyle,
      textAlign: child.textAlign,
      textDirection: child.textDirection,
      softWrap: child.softWrap,
      overflow: child.overflow,
      textScaleFactor: child.textScaleFactor,
      maxLines: child.maxLines,
      semanticsLabel: child.semanticsLabel,
      textWidthBasis: child.textWidthBasis,
      textHeightBehavior: child.textHeightBehavior,
    );
  }
}
