import 'dart:ui' as ui show TextHeightBehavior;
import 'package:flutter/widgets.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class I18nPlural extends StatelessWidget {
  final String _key;
  final int _pluralValue;
  final Text child;
  static const _default_text = Text("");

  I18nPlural(this._key, this._pluralValue, {this.child = _default_text})
      : assert(
          _key != null,
          'A non-null String must be provided to an I18nPlural widget.',
        ),
        assert(_pluralValue != null,
            'A non-null Integer must be provided to an I18nPlural widget.'),
        assert(_pluralValue >= 0,
            'An Integer equal to or greater than zero must be provided to an I18nPlural widget.');

  I18nPlural.standalone(
    this._key,
    this._pluralValue, {
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
          'A non-null String must be provided to an I18nPlural widget.',
        ),
        assert(_pluralValue != null,
            'A non-null Integer must be provided to an I18nPlural widget.'),
        assert(_pluralValue >= 0,
            'An Integer equal to or greater than zero must be provided to an I18nPlural widget.');

  @override
  Widget build(BuildContext context) {
    return Text(
      FlutterI18n.plural(context, _key, _pluralValue),
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
