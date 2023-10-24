class Category {
  final String title;
  final bool is_active;

  Category({required this.title, required this.is_active});
}

List<Category> demo_categories = [
  Category(title: "All", is_active: true),
  Category(title: "Headset", is_active: false),
  Category(title: "Airpods", is_active: false),
  Category(title: "Lamps", is_active: false),
];
