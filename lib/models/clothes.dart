class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;

  List<String> detaiUrl;
  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detaiUrl);
  static List<Clothes> generateClothes() {
    return [
      Clothes('Gucci oversize', 'Hoodie', '\$79.99',
          'assets/images/images/arrival1.png', [
        'assets/images/images/arrival1.png',
        'assets/images/images/detail2.png'
      ]),
      Clothes('Man coat', 'Rain-Jacket', '\$39.99',
          'assets/images/images/arrival2.png', [
        'assets/images/images/arrival2.png',
        'assets/images/images/detail3.png'
      ])
    ];
  }
}
