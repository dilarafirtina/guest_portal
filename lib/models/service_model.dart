class Service {
  final int id;
  final String title, description, price;
  final List<String> images;
  final bool isFavourite, isPopular;

  Service({
    required this.id,
    required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Service> demoServices = [
  Service(
    id: 1,
    images: [
      "assets/images/1.jpg",
    ],
    title: "Lorem impsum dolor sit amet",
    price: "Free",
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Service(
    id: 2,
    images: [
      "assets/images/3.jpg",
    ],
    title: "Lorem impsum dolor sit amet",
    price: "50.5",
    description: description,
    isPopular: true,
  ),
  Service(
    id: 3,
    images: [
      "assets/images/4.jpg",
    ],
    title: "Lorem impsum dolor sit amet",
    price: "36.55",
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Service(
    id: 4,
    images: [
      "assets/images/5.jpg",
    ],
    title: "Lorem impsum dolor sit amet",
    price: "Free",
    description: description,
    isFavourite: true,
  ),
];

const String description =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
