class RealEstate {
  String? img;
  String? tag;
  String? price;
  String? vendor;
  String? title;
  int? rooms;
  int? bathroom;
  int? block;
  String? type;

  RealEstate({
    this.img,
    this.tag,
    this.price,
    this.vendor,
    this.title,
    this.rooms,
    this.bathroom,
    this.block,
    this.type,
  });
}

List<RealEstate> _realEstateItem = [
  RealEstate(
      tag: "PREMIUM",
      price: "499,990",
      img: "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
      vendor: "Betterhomes.",
      title: "Exclusive, serviced, all bills included. City views",
      type: "Villa",
      rooms: 2,
      bathroom: 2,
      block: 2998),
];
