class RealEstate {
  String? img;
  String? tag;
  String? price;
  String? vendor;
  String? title;
  String? detail;

  int? rooms;
  int? bathroom;
  int? sqft;
  String? type;
  String? sellerProfile;
  String? sellerName;
  String? sellerSubtitle;

  RealEstate(
      {this.img,
      this.tag,
      this.price,
      this.vendor,
      this.title,
      this.detail,
      this.rooms,
      this.bathroom,
      this.sqft,
      this.type,
      this.sellerProfile,
      this.sellerName,
      this.sellerSubtitle});
}

List<RealEstate> realEstateItem = [
  RealEstate(
      tag: "PREMIUM",
      price: "499,990",
      img: "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
      vendor: "Betterhomes.",
      title: "Exclusive, serviced, all bills included. City views",
      type: "Villa",
      rooms: 2,
      bathroom: 2,
      sqft: 2998,
    sellerName: "Esther Howard",
    sellerSubtitle: "Betterhomes Real Estate",
    detail: 
  ),
  RealEstate(
      tag: "FEATURED",
      price: "499,990",
      img: "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
      vendor: "Betterhomes.",
      title: "Exclusive, serviced, all bills included. City views",
      type: "Villa",
      rooms: 2,
      bathroom: 2,
      sqft: 2998),
];
