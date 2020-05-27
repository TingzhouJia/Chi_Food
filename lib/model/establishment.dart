
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'establishment.g.dart';
abstract class Establishment implements Built<Establishment,EstablishmentBuilder>{
  static Serializer<Establishment> get serializer => _$establishmentSerializer;
  int get id;
  String get name;
  Establishment._();
  factory Establishment([void Function(EstablishmentBuilder) updates]) =_$Establishment;
}