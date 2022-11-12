class Furniture {
  final String name, price, description;
  final bool isFavorite;
  final double rating;

  const Furniture({
    required this.name,
    required this.price,
    required this.description,
    this.isFavorite = false,
    required this.rating,
  });

  static const List<Furniture> furnitures = [
    Furniture(
      name: 'Stylish Chair',
      price: '\$170',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.8,
    ),
    Furniture(
      name: 'Modern Table',
      price: '\$75',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.9,
    ),
    Furniture(
      name: 'Wooden Console',
      price: '\$240',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.7,
    ),
    Furniture(
      name: 'Brown Armchair',
      price: '\$210',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.9,
    ),
    Furniture(
      name: 'Wooden Coff',
      price: '\$240',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.0,
    ),
  ];
}
