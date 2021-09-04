

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
    items: ["05", "17", "35" , "68", "92"]
  )
];