// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializer = (new Serializers().toBuilder()
      ..add(BaseUser.serializer)
      ..add(Location.serializer)
      ..add(LocationDetail.serializer)
      ..add(LocationLocation.serializer)
      ..add(Photo.serializer)
      ..add(Popularity.serializer)
      ..add(Restaurants.serializer)
      ..add(Review.serializer)
      ..add(ReviewUser.serializer)
      ..add(SearchResult.serializer)
      ..add(UserRating.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Restaurants)]),
          () => new ListBuilder<Restaurants>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Restaurants)]),
          () => new ListBuilder<Restaurants>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Review)]),
          () => new ListBuilder<Review>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Photo)]),
          () => new ListBuilder<Photo>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new