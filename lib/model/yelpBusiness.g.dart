// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yelpBusiness.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YelpBusiness> _$yelpBusinessSerializer =
    new _$YelpBusinessSerializer();

class _$YelpBusinessSerializer implements StructuredSerializer<YelpBusiness> {
  @override
  final Iterable<Type> types = const [YelpBusiness, _$YelpBusiness];
  @override
  final String wireName = 'YelpBusiness';

  @override
  Iterable<Object> serialize(Serializers serializers, YelpBusiness object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'alias',
      serializers.serialize(object.alias,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.image_url,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(YelpLocation)),
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType: const FullType(YelpCoordinate)),
      'photos',
      serializers.serialize(object.photos,
          specifiedType: const FullType(List, const [const FullType(String)])),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
    ];
    if (object.open != null) {
      result
        ..add('open')
        ..add(serializers.serialize(object.open,
            specifiedType:
                const FullType(BuiltList, const [const FullType(YelpOpen)])));
    }
    return result;
  }

  @override
  YelpBusiness deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YelpBusinessBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alias':
          result.alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(YelpLocation)) as YelpLocation);
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(YelpCoordinate)) as YelpCoordinate);
          break;
        case 'photos':
          result.photos = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open':
          result.open.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(YelpOpen)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$YelpBusiness extends YelpBusiness {
  @override
  final String id;
  @override
  final String alias;
  @override
  final String name;
  @override
  final String image_url;
  @override
  final String phone;
  @override
  final double rating;
  @override
  final YelpLocation location;
  @override
  final YelpCoordinate coordinates;
  @override
  final List<String> photos;
  @override
  final String price;
  @override
  final BuiltList<YelpOpen> open;

  factory _$YelpBusiness([void Function(YelpBusinessBuilder) updates]) =>
      (new YelpBusinessBuilder()..update(updates)).build();

  _$YelpBusiness._(
      {this.id,
      this.alias,
      this.name,
      this.image_url,
      this.phone,
      this.rating,
      this.location,
      this.coordinates,
      this.photos,
      this.price,
      this.open})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'id');
    }
    if (alias == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'alias');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'name');
    }
    if (image_url == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'image_url');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'phone');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'rating');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'location');
    }
    if (coordinates == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'coordinates');
    }
    if (photos == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'photos');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('YelpBusiness', 'price');
    }
  }

  @override
  YelpBusiness rebuild(void Function(YelpBusinessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YelpBusinessBuilder toBuilder() => new YelpBusinessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YelpBusiness &&
        id == other.id &&
        alias == other.alias &&
        name == other.name &&
        image_url == other.image_url &&
        phone == other.phone &&
        rating == other.rating &&
        location == other.location &&
        coordinates == other.coordinates &&
        photos == other.photos &&
        price == other.price &&
        open == other.open;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            alias.hashCode),
                                        name.hashCode),
                                    image_url.hashCode),
                                phone.hashCode),
                            rating.hashCode),
                        location.hashCode),
                    coordinates.hashCode),
                photos.hashCode),
            price.hashCode),
        open.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YelpBusiness')
          ..add('id', id)
          ..add('alias', alias)
          ..add('name', name)
          ..add('image_url', image_url)
          ..add('phone', phone)
          ..add('rating', rating)
          ..add('location', location)
          ..add('coordinates', coordinates)
          ..add('photos', photos)
          ..add('price', price)
          ..add('open', open))
        .toString();
  }
}

class YelpBusinessBuilder
    implements Builder<YelpBusiness, YelpBusinessBuilder> {
  _$YelpBusiness _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _alias;
  String get alias => _$this._alias;
  set alias(String alias) => _$this._alias = alias;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _image_url;
  String get image_url => _$this._image_url;
  set image_url(String image_url) => _$this._image_url = image_url;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  YelpLocationBuilder _location;
  YelpLocationBuilder get location =>
      _$this._location ??= new YelpLocationBuilder();
  set location(YelpLocationBuilder location) => _$this._location = location;

  YelpCoordinateBuilder _coordinates;
  YelpCoordinateBuilder get coordinates =>
      _$this._coordinates ??= new YelpCoordinateBuilder();
  set coordinates(YelpCoordinateBuilder coordinates) =>
      _$this._coordinates = coordinates;

  List<String> _photos;
  List<String> get photos => _$this._photos;
  set photos(List<String> photos) => _$this._photos = photos;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  ListBuilder<YelpOpen> _open;
  ListBuilder<YelpOpen> get open =>
      _$this._open ??= new ListBuilder<YelpOpen>();
  set open(ListBuilder<YelpOpen> open) => _$this._open = open;

  YelpBusinessBuilder();

  YelpBusinessBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _alias = _$v.alias;
      _name = _$v.name;
      _image_url = _$v.image_url;
      _phone = _$v.phone;
      _rating = _$v.rating;
      _location = _$v.location?.toBuilder();
      _coordinates = _$v.coordinates?.toBuilder();
      _photos = _$v.photos;
      _price = _$v.price;
      _open = _$v.open?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YelpBusiness other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YelpBusiness;
  }

  @override
  void update(void Function(YelpBusinessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YelpBusiness build() {
    _$YelpBusiness _$result;
    try {
      _$result = _$v ??
          new _$YelpBusiness._(
              id: id,
              alias: alias,
              name: name,
              image_url: image_url,
              phone: phone,
              rating: rating,
              location: location.build(),
              coordinates: coordinates.build(),
              photos: photos,
              price: price,
              open: _open?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'coordinates';
        coordinates.build();

        _$failedField = 'open';
        _open?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'YelpBusiness', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
