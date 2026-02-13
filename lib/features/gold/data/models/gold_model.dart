class GoldModel {
  String? name;
  double? price;
  String? symbol;
  String? updatedAt;
  String? updatedAtReadable;

  GoldModel({
    this.name,
    this.price,
    this.symbol,
    this.updatedAt,
    this.updatedAtReadable,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) => GoldModel(
    name: json['name'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    symbol: json['symbol'] as String?,
    updatedAt: json['updatedAt'] as String?,
    updatedAtReadable: json['updatedAtReadable'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
    'symbol': symbol,
    'updatedAt': updatedAt,
    'updatedAtReadable': updatedAtReadable,
  };
}
