import 'entity.dart';

class Plant extends Entity {
  final String name;
  final int price;
  final String image;
  final String country;

  Plant({
    required this.name,
    required this.price,
    required this.image,
    required this.country,
  });

  @override
  Map<String, dynamic> toJson() => {};
}
