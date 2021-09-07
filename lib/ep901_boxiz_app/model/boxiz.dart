
class BoxizSelect{
  int? number;
  bool? isOpen;

  BoxizSelect({this.number, this.isOpen});
}

class Boxiz{
  String? img;
  String? prize;
  String? type;
  String? title;
  String? datetime;
  String? coin;
  List<String>? items;
  Duration? liveIn;

  Boxiz({this.img, this.prize, this.type, this.title, this.datetime, this.coin, this.items, this.liveIn});
}


List<Boxiz> boxizItems = [
  Boxiz(
    title: "Bulls @ Lakers",
    datetime: "Jun 20 @ 8:30PM ET",
    coin: "50 Box Coin",
    liveIn: Duration(seconds: 54, minutes: 4),
    prize: "VIRTUAL PRIZE",
    type: "NBA",
    items: ["05", "17", "35" , "68", "92"],
    img: "https://cdn.pixabay.com/photo/2013/03/21/15/52/basketball-95607_960_720.jpg",
  ),
  Boxiz(
    title: "Bulls @ Lakers",
    datetime: "Jun 20 @ 8:30PM ET",
    coin: "50 Box Coin",
    liveIn: Duration(seconds: 54, minutes: 4),
    prize: "VIRTUAL PRIZE",
    type: "NBA",
    items: ["05", "17", "35" , "68", "92"],
    img: "https://cdn.pixabay.com/photo/2013/03/21/15/52/basketball-95607_960_720.jpg",
  )
];