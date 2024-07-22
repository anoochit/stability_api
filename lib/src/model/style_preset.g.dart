// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_preset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StylePreset _$n3dModel = const StylePreset._('n3dModel');
const StylePreset _$analogFilm = const StylePreset._('analogFilm');
const StylePreset _$anime = const StylePreset._('anime');
const StylePreset _$cinematic = const StylePreset._('cinematic');
const StylePreset _$comicBook = const StylePreset._('comicBook');
const StylePreset _$digitalArt = const StylePreset._('digitalArt');
const StylePreset _$enhance = const StylePreset._('enhance');
const StylePreset _$fantasyArt = const StylePreset._('fantasyArt');
const StylePreset _$isometric = const StylePreset._('isometric');
const StylePreset _$lineArt = const StylePreset._('lineArt');
const StylePreset _$lowPoly = const StylePreset._('lowPoly');
const StylePreset _$modelingCompound = const StylePreset._('modelingCompound');
const StylePreset _$neonPunk = const StylePreset._('neonPunk');
const StylePreset _$origami = const StylePreset._('origami');
const StylePreset _$photographic = const StylePreset._('photographic');
const StylePreset _$pixelArt = const StylePreset._('pixelArt');
const StylePreset _$tileTexture = const StylePreset._('tileTexture');

StylePreset _$valueOf(String name) {
  switch (name) {
    case 'n3dModel':
      return _$n3dModel;
    case 'analogFilm':
      return _$analogFilm;
    case 'anime':
      return _$anime;
    case 'cinematic':
      return _$cinematic;
    case 'comicBook':
      return _$comicBook;
    case 'digitalArt':
      return _$digitalArt;
    case 'enhance':
      return _$enhance;
    case 'fantasyArt':
      return _$fantasyArt;
    case 'isometric':
      return _$isometric;
    case 'lineArt':
      return _$lineArt;
    case 'lowPoly':
      return _$lowPoly;
    case 'modelingCompound':
      return _$modelingCompound;
    case 'neonPunk':
      return _$neonPunk;
    case 'origami':
      return _$origami;
    case 'photographic':
      return _$photographic;
    case 'pixelArt':
      return _$pixelArt;
    case 'tileTexture':
      return _$tileTexture;
    default:
      return _$tileTexture;
  }
}

final BuiltSet<StylePreset> _$values =
    new BuiltSet<StylePreset>(const <StylePreset>[
  _$n3dModel,
  _$analogFilm,
  _$anime,
  _$cinematic,
  _$comicBook,
  _$digitalArt,
  _$enhance,
  _$fantasyArt,
  _$isometric,
  _$lineArt,
  _$lowPoly,
  _$modelingCompound,
  _$neonPunk,
  _$origami,
  _$photographic,
  _$pixelArt,
  _$tileTexture,
]);

class _$StylePresetMeta {
  const _$StylePresetMeta();
  StylePreset get n3dModel => _$n3dModel;
  StylePreset get analogFilm => _$analogFilm;
  StylePreset get anime => _$anime;
  StylePreset get cinematic => _$cinematic;
  StylePreset get comicBook => _$comicBook;
  StylePreset get digitalArt => _$digitalArt;
  StylePreset get enhance => _$enhance;
  StylePreset get fantasyArt => _$fantasyArt;
  StylePreset get isometric => _$isometric;
  StylePreset get lineArt => _$lineArt;
  StylePreset get lowPoly => _$lowPoly;
  StylePreset get modelingCompound => _$modelingCompound;
  StylePreset get neonPunk => _$neonPunk;
  StylePreset get origami => _$origami;
  StylePreset get photographic => _$photographic;
  StylePreset get pixelArt => _$pixelArt;
  StylePreset get tileTexture => _$tileTexture;
  StylePreset valueOf(String name) => _$valueOf(name);
  BuiltSet<StylePreset> get values => _$values;
}

abstract class _$StylePresetMixin {
  // ignore: non_constant_identifier_names
  _$StylePresetMeta get StylePreset => const _$StylePresetMeta();
}

Serializer<StylePreset> _$stylePresetSerializer = new _$StylePresetSerializer();

class _$StylePresetSerializer implements PrimitiveSerializer<StylePreset> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n3dModel': '3d-model',
    'analogFilm': 'analog-film',
    'anime': 'anime',
    'cinematic': 'cinematic',
    'comicBook': 'comic-book',
    'digitalArt': 'digital-art',
    'enhance': 'enhance',
    'fantasyArt': 'fantasy-art',
    'isometric': 'isometric',
    'lineArt': 'line-art',
    'lowPoly': 'low-poly',
    'modelingCompound': 'modeling-compound',
    'neonPunk': 'neon-punk',
    'origami': 'origami',
    'photographic': 'photographic',
    'pixelArt': 'pixel-art',
    'tileTexture': 'tile-texture',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '3d-model': 'n3dModel',
    'analog-film': 'analogFilm',
    'anime': 'anime',
    'cinematic': 'cinematic',
    'comic-book': 'comicBook',
    'digital-art': 'digitalArt',
    'enhance': 'enhance',
    'fantasy-art': 'fantasyArt',
    'isometric': 'isometric',
    'line-art': 'lineArt',
    'low-poly': 'lowPoly',
    'modeling-compound': 'modelingCompound',
    'neon-punk': 'neonPunk',
    'origami': 'origami',
    'photographic': 'photographic',
    'pixel-art': 'pixelArt',
    'tile-texture': 'tileTexture',
  };

  @override
  final Iterable<Type> types = const <Type>[StylePreset];
  @override
  final String wireName = 'StylePreset';

  @override
  Object serialize(Serializers serializers, StylePreset object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StylePreset deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StylePreset.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
