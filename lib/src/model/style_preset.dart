//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_preset.g.dart';

class StylePreset extends EnumClass {
  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'3d-model')
  static const StylePreset n3dModel = _$n3dModel;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'analog-film')
  static const StylePreset analogFilm = _$analogFilm;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'anime')
  static const StylePreset anime = _$anime;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'cinematic')
  static const StylePreset cinematic = _$cinematic;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'comic-book')
  static const StylePreset comicBook = _$comicBook;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'digital-art')
  static const StylePreset digitalArt = _$digitalArt;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'enhance')
  static const StylePreset enhance = _$enhance;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'fantasy-art')
  static const StylePreset fantasyArt = _$fantasyArt;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'isometric')
  static const StylePreset isometric = _$isometric;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'line-art')
  static const StylePreset lineArt = _$lineArt;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'low-poly')
  static const StylePreset lowPoly = _$lowPoly;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'modeling-compound')
  static const StylePreset modelingCompound = _$modelingCompound;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'neon-punk')
  static const StylePreset neonPunk = _$neonPunk;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'origami')
  static const StylePreset origami = _$origami;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'photographic')
  static const StylePreset photographic = _$photographic;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'pixel-art')
  static const StylePreset pixelArt = _$pixelArt;

  /// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
  @BuiltValueEnumConst(wireName: r'tile-texture', fallback: true)
  static const StylePreset tileTexture = _$tileTexture;

  static Serializer<StylePreset> get serializer => _$stylePresetSerializer;

  const StylePreset._(String name) : super(name);

  static BuiltSet<StylePreset> get values => _$values;
  static StylePreset valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StylePresetMixin = Object with _$StylePresetMixin;
