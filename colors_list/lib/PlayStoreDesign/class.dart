class AppItem {
  final String imageUrl;
  final String name;
  final String type;
  final String descrip;

  AppItem(
    this.imageUrl,
    this.name,
    this.type,
    this.descrip,
  );
}

List<AppItem> app = [
  AppItem(
    "assets/bgmi.jpg",
    "PUBG",
    "Game",
    "App at Limited Stock",
  ),
  AppItem("assets/spi.jpg", "valorant", "Game", "New Arival"),
  AppItem("assets/war.jpg", "Clash of Clan", "Game", "Hot App"),
  AppItem("assets/4.jpg", "Clash of Royal", "Game", "Limited Period Offer"),
];

List<AppItem> games = [
  AppItem(
      'https://media.wired.com/photos/62feb60bcea7c0581e825cb0/master/pass/Fate-of-Game-Preservation-Games-GettyImages-1170073827.jpg',
      'Python',
      'Entertainment',
      '12'),
  AppItem(
      'https://img.freepik.com/free-psd/whatsapp-icon-isolated-3d-render-illustration_47987-9785.jpg',
      'Whatsapp',
      'Game',
      '30'),
  AppItem(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ-g2zknp5rVroM3sl_16OUpbHIFJ1dxPlKG-8NwPPZw&s',
      'Social Media',
      'Travel',
      '25'),
  AppItem(
      'https://img.freepik.com/premium-photo/youtube-logo-video-player-3d-design-video-media-player-interface_41204-12379.jpg',
      'Youtube',
      'Social network',
      'Free'),
];
