class BaseModel {
  String? imageUrl;
  String? name;
  double? price;
  String? subName;
  String? subPrice;

  BaseModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.subName,
    required this.subPrice,
  });
}

List<BaseModel> baseData = [
  BaseModel(
    imageUrl: 'assets/images/bit.png',
    name: 'Bitcoin',
    price: 16.693,
    subName: 'BTCB',
    subPrice: '-0.12',
  ),
  BaseModel(
    imageUrl: 'assets/images/image3.png',
    name: 'Bitcoin',
    price: 16.693,
    subName: 'BTCB',
    subPrice: '-0.12',
  ),
  BaseModel(
    imageUrl: 'assets/images/bit.png',
    name: 'Bitcoin',
    price: 16.693,
    subName: 'BTCB',
    subPrice: '-0.12',
  ),
  BaseModel(
    imageUrl: 'assets/images/image3.png',
    name: 'Bitcoin',
    price: 16.693,
    subName: 'BTCB',
    subPrice: '-0.12',
  ),
  BaseModel(
    imageUrl: 'assets/images/bit.png',
    name: 'Bitcoin',
    price: 16.693,
    subName: 'BTCB',
    subPrice: '-0.12',
  ),
];
