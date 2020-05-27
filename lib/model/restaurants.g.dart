// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Restaurants> _$restaurantsSerializer = new _$RestaurantsSerializer();

class _$RestaurantsSerializer implements StructuredSerializer<Restaurants> {
  @override
  final Iterable<Type> types = const [Restaurants, _$Restaurants];
  @override
  final String wireName = 'Restaurants';

  @override
  Iterable<Object> serialize(Serializers serializers, Restaurants object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
      'average_cost_for_two',
      serializers.serialize(object.average_cost_for_two,
          specifiedType: const FullType(int)),
      'all_reviews',
      serializers.serialize(object.all_reviews,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Review)])),
      'cuisines',
      serializers.serialize(object.cuisines,
          specifiedType: const FullType(String)),
      'price_range',
      serializers.serialize(object.price_range,
          specifiedType: const FullType(int)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumb,
          specifiedType: const FullType(String)),
      'featured_image',
      serializers.serialize(object.featured_image,
          specifiedType: const FullType(String)),
      'photos_url',
      serializers.serialize(object.photos_url,
          specifiedType: const FullType(String)),
      'menu_url',
      serializers.serialize(object.menu_url,
          specifiedType: const FullType(String)),
      'events_url',
      serializers.serialize(object.events_url,
          specifiedType: const FullType(String)),
      'user_rating',
      serializers.serialize(object.user_rating,
          specifiedType: const FullType(UserRating)),
      'has_online_delivery',
      serializers.serialize(object.has_online_delivery,
          specifiedType: const FullType(int)),
      'is_delivering_now',
      serializers.serialize(object.is_delivering_now,
          specifiedType: const FullType(int)),
      'has_table_booking',
      serializers.serialize(object.has_table_booking,
          specifiedType: const FullType(int)),
      'deeplink',
      serializers.serialize(object.deeplink,
          specifiedType: const FullType(String)),
    ];
    if (object.all_reviews_count != null) {
      result
        ..add('all_reviews_count')
        ..add(serializers.serialize(object.all_reviews_count,
            specifiedType: const FullType(int)));
    }
    if (object.photo_count != null) {
      result
        ..add('photo_count')
        ..add(serializers.serialize(object.photo_count,
            specifiedType: const FullType(int)));
    }
    if (object.phone_numbers != null) {
      result
        ..add('phone_numbers')
        ..add(serializers.serialize(object.phone_numbers,
            specifiedType: const FullType(String)));
    }
    if (object.photos != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(object.photos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Photo)])));
    }
    return result;
  }

  @override
  Restaurants deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
        case 'average_cost_for_two':
          result.average_cost_for_two = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'all_reviews':
          result.all_reviews.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Review)]))
              as BuiltList<Object>);
          break;
        case 'cuisines':
          result.cuisines = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_range':
          result.price_range = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured_image':
          result.featured_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photos_url':
          result.photos_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'menu_url':
          result.menu_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.events_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_rating':
          result.user_rating.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserRating)) as UserRating);
          break;
        case 'has_online_delivery':
          result.has_online_delivery = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_delivering_now':
          result.is_delivering_now = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'has_table_booking':
          result.has_table_booking = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deeplink':
          result.deeplink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'all_reviews_count':
          result.all_reviews_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photo_count':
          result.photo_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phone_numbers':
          result.phone_numbers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Photo)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Restaurants extends Restaurants {
  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final Location location;
  @override
  final int average_cost_for_two;
  @override
  final BuiltList<Review> all_reviews;
  @override
  final String cuisines;
  @override
  final int price_range;
  @override
  final String currency;
  @override
  final String thumb;
  @override
  final String featured_image;
  @override
  final String photos_url;
  @override
  final String menu_url;
  @override
  final String events_url;
  @override
  final UserRating user_rating;
  @override
  final int has_online_delivery;
  @override
  final int is_delivering_now;
  @override
  final int has_table_booking;
  @override
  final String deeplink;
  @override
  final int all_reviews_count;
  @override
  final int photo_count;
  @override
  final String phone_numbers;
  @override
  final BuiltList<Photo> photos;

  factory _$Restaurants([void Function(RestaurantsBuilder) updates]) =>
      (new RestaurantsBuilder()..update(updates)).build();

  _$Restaurants._(
      {this.id,
      this.name,
      this.url,
      this.location,
      this.average_cost_for_two,
      this.all_reviews,
      this.cuisines,
      this.price_range,
      this.currency,
      this.thumb,
      this.featured_image,
      this.photos_url,
      this.menu_url,
      this.events_url,
      this.user_rating,
      this.has_online_delivery,
      this.is_delivering_now,
      this.has_table_booking,
      this.deeplink,
      this.all_reviews_count,
      this.photo_count,
      this.phone_numbers,
      this.photos})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'name');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'url');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'location');
    }
    if (average_cost_for_two == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'average_cost_for_two');
    }
    if (all_reviews == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'all_reviews');
    }
    if (cuisines == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'cuisines');
    }
    if (price_range == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'price_range');
    }
    if (currency == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'currency');
    }
    if (thumb == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'thumb');
    }
    if (featured_image == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'featured_image');
    }
    if (photos_url == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'photos_url');
    }
    if (menu_url == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'menu_url');
    }
    if (events_url == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'events_url');
    }
    if (user_rating == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'user_rating');
    }
    if (has_online_delivery == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'has_online_delivery');
    }
    if (is_delivering_now == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'is_delivering_now');
    }
    if (has_table_booking == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'has_table_booking');
    }
    if (deeplink == null) {
      throw new BuiltValueNullFieldError('Restaurants', 'deeplink');
    }
  }

  @override
  Restaurants rebuild(void Function(RestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantsBuilder toBuilder() => new RestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurants &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        location == other.location &&
        average_cost_for_two == other.average_cost_for_two &&
        all_reviews == other.all_reviews &&
        cuisines == other.cuisines &&
        price_range == other.price_range &&
        currency == other.currency &&
        thumb == other.thumb &&
        featured_image == other.featured_image &&
        photos_url == other.photos_url &&
        menu_url == other.menu_url &&
        events_url == other.events_url &&
        user_rating == other.user_rating &&
        has_online_delivery == other.has_online_delivery &&
        is_delivering_now == other.is_delivering_now &&
        has_table_booking == other.has_table_booking &&
        deeplink == other.deeplink &&
        all_reviews_count == other.all_reviews_count &&
        photo_count == other.photo_count &&
        phone_numbers == other.phone_numbers &&
        photos == other.photos;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, id.hashCode), name.hashCode), url.hashCode), location.hashCode),
                                                                                average_cost_for_two.hashCode),
                                                                            all_reviews.hashCode),
                                                                        cuisines.hashCode),
                                                                    price_range.hashCode),
                                                                currency.hashCode),
                                                            thumb.hashCode),
                                                        featured_image.hashCode),
                                                    photos_url.hashCode),
                                                menu_url.hashCode),
                                            events_url.hashCode),
                                        user_rating.hashCode),
                                    has_online_delivery.hashCode),
                                is_delivering_now.hashCode),
                            has_table_booking.hashCode),
                        deeplink.hashCode),
                    all_reviews_count.hashCode),
                photo_count.hashCode),
            phone_numbers.hashCode),
        photos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Restaurants')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('location', location)
          ..add('average_cost_for_two', average_cost_for_two)
          ..add('all_reviews', all_reviews)
          ..add('cuisines', cuisines)
          ..add('price_range', price_range)
          ..add('currency', currency)
          ..add('thumb', thumb)
          ..add('featured_image', featured_image)
          ..add('photos_url', photos_url)
          ..add('menu_url', menu_url)
          ..add('events_url', events_url)
          ..add('user_rating', user_rating)
          ..add('has_online_delivery', has_online_delivery)
          ..add('is_delivering_now', is_delivering_now)
          ..add('has_table_booking', has_table_booking)
          ..add('deeplink', deeplink)
          ..add('all_reviews_count', all_reviews_count)
          ..add('photo_count', photo_count)
          ..add('phone_numbers', phone_numbers)
          ..add('photos', photos))
        .toString();
  }
}

class RestaurantsBuilder implements Builder<Restaurants, RestaurantsBuilder> {
  _$Restaurants _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  int _average_cost_for_two;
  int get average_cost_for_two => _$this._average_cost_for_two;
  set average_cost_for_two(int average_cost_for_two) =>
      _$this._average_cost_for_two = average_cost_for_two;

  ListBuilder<Review> _all_reviews;
  ListBuilder<Review> get all_reviews =>
      _$this._all_reviews ??= new ListBuilder<Review>();
  set all_reviews(ListBuilder<Review> all_reviews) =>
      _$this._all_reviews = all_reviews;

  String _cuisines;
  String get cuisines => _$this._cuisines;
  set cuisines(String cuisines) => _$this._cuisines = cuisines;

  int _price_range;
  int get price_range => _$this._price_range;
  set price_range(int price_range) => _$this._price_range = price_range;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _thumb;
  String get thumb => _$this._thumb;
  set thumb(String thumb) => _$this._thumb = thumb;

  String _featured_image;
  String get featured_image => _$this._featured_image;
  set featured_image(String featured_image) =>
      _$this._featured_image = featured_image;

  String _photos_url;
  String get photos_url => _$this._photos_url;
  set photos_url(String photos_url) => _$this._photos_url = photos_url;

  String _menu_url;
  String get menu_url => _$this._menu_url;
  set menu_url(String menu_url) => _$this._menu_url = menu_url;

  String _events_url;
  String get events_url => _$this._events_url;
  set events_url(String events_url) => _$this._events_url = events_url;

  UserRatingBuilder _user_rating;
  UserRatingBuilder get user_rating =>
      _$this._user_rating ??= new UserRatingBuilder();
  set user_rating(UserRatingBuilder user_rating) =>
      _$this._user_rating = user_rating;

  int _has_online_delivery;
  int get has_online_delivery => _$this._has_online_delivery;
  set has_online_delivery(int has_online_delivery) =>
      _$this._has_online_delivery = has_online_delivery;

  int _is_delivering_now;
  int get is_delivering_now => _$this._is_delivering_now;
  set is_delivering_now(int is_delivering_now) =>
      _$this._is_delivering_now = is_delivering_now;

  int _has_table_booking;
  int get has_table_booking => _$this._has_table_booking;
  set has_table_booking(int has_table_booking) =>
      _$this._has_table_booking = has_table_booking;

  String _deeplink;
  String get deeplink => _$this._deeplink;
  set deeplink(String deeplink) => _$this._deeplink = deeplink;

  int _all_reviews_count;
  int get all_reviews_count => _$this._all_reviews_count;
  set all_reviews_count(int all_reviews_count) =>
      _$this._all_reviews_count = all_reviews_count;

  int _photo_count;
  int get photo_count => _$this._photo_count;
  set photo_count(int photo_count) => _$this._photo_count = photo_count;

  String _phone_numbers;
  String get phone_numbers => _$this._phone_numbers;
  set phone_numbers(String phone_numbers) =>
      _$this._phone_numbers = phone_numbers;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  RestaurantsBuilder();

  RestaurantsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _url = _$v.url;
      _location = _$v.location?.toBuilder();
      _average_cost_for_two = _$v.average_cost_for_two;
      _all_reviews = _$v.all_reviews?.toBuilder();
      _cuisines = _$v.cuisines;
      _price_range = _$v.price_range;
      _currency = _$v.currency;
      _thumb = _$v.thumb;
      _featured_image = _$v.featured_image;
      _photos_url = _$v.photos_url;
      _menu_url = _$v.menu_url;
      _events_url = _$v.events_url;
      _user_rating = _$v.user_rating?.toBuilder();
      _has_online_delivery = _$v.has_online_delivery;
      _is_delivering_now = _$v.is_delivering_now;
      _has_table_booking = _$v.has_table_booking;
      _deeplink = _$v.deeplink;
      _all_reviews_count = _$v.all_reviews_count;
      _photo_count = _$v.photo_count;
      _phone_numbers = _$v.phone_numbers;
      _photos = _$v.photos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Restaurants other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Restaurants;
  }

  @override
  void update(void Function(RestaurantsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Restaurants build() {
    _$Restaurants _$result;
    try {
      _$result = _$v ??
          new _$Restaurants._(
              id: id,
              name: name,
              url: url,
              location: location.build(),
              average_cost_for_two: average_cost_for_two,
              all_reviews: all_reviews.build(),
              cuisines: cuisines,
              price_range: price_range,
              currency: currency,
              thumb: thumb,
              featured_image: featured_image,
              photos_url: photos_url,
              menu_url: menu_url,
              events_url: events_url,
              user_rating: user_rating.build(),
              has_online_delivery: has_online_delivery,
              is_delivering_now: is_delivering_now,
              has_table_booking: has_table_booking,
              deeplink: deeplink,
              all_reviews_count: all_reviews_count,
              photo_count: photo_count,
              phone_numbers: phone_numbers,
              photos: _photos?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();

        _$failedField = 'all_reviews';
        all_reviews.build();

        _$failedField = 'user_rating';
        user_rating.build();

        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Restaurants', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
