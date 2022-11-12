class Furniture {
  final String name, price, description, image;
  final bool isFavorite;
  final double rating;

  const Furniture({
    required this.name,
    required this.price,
    required this.description,
    this.isFavorite = false,
    required this.rating,
    required this.image,
  });

  static const List<Furniture> furnitures = [
    Furniture(
      name: 'Stylish Chair',
      price: '\$170',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.8,
      image: 'assets/images/img1.png',
    ),
    Furniture(
      name: 'Modern Table',
      price: '\$75',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.9,
      image: 'assets/images/img2.png',
    ),
    Furniture(
      name: 'Wooden Console',
      price: '\$240',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.7,
      image: 'assets/images/img3.png',
    ),
    Furniture(
      name: 'Brown Armchair',
      price: '\$210',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.9,
      image: 'assets/images/img4.png',
    ),
    Furniture(
      name: 'Wooden Coff',
      price: '\$240',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.0,
      image: 'assets/images/img5.png',
    ),
  ];
}
