class Movies {
  final String title, description, released_date, image, genre, rating, story;
  final bool is_popular;

  Movies(
      {required this.title,
      required this.description,
      required this.image,
      required this.genre,
      required this.released_date,
      required this.rating,
      required this.story,
      required this.is_popular});
}

List<Movies> demo_movies = [
  Movies(
    image: "assets/posters/poster1.jpg",
    title: "Suburbicon",
    description: "Lorem ipsum dolor sit amet",
    genre: "Mystery",
    released_date: "2 May 1998",
    rating: "3.2",
    story:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    is_popular: false,
  ),
  Movies(
    image: "assets/posters/poster2.jpg",
    title: "Joker",
    description: "Lorem ipsum dolor sit amet",
    genre: "Mystery",
    released_date: "4 October 2021",
    rating: "7.6",
    story:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    is_popular: true,
  ),
  Movies(
    image: "assets/posters/poster3.jpg",
    title: "Spider-Man No Way Home",
    description: "Lorem ipsum dolor sit amet",
    genre: "Action",
    released_date: "4 October 2021",
    rating: "8.6",
    story:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    is_popular: true,
  ),
  Movies(
    image: "assets/posters/poster4.jpg",
    title: "Black Phanter",
    description: "Lorem ipsum dolor sit amet",
    genre: "Action",
    released_date: "4 October 2021",
    rating: "9.8",
    story:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    is_popular: true,
  ),
];
