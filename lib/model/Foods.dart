class Ingredient{
  var _id;
  var name;
  var _qty;
  var _calories;
  var _imgurl;
  var unit;

  Ingredient(this._id, this.name, this._qty,this.unit );

  get id => _id;

  set id(value) {
    _id = value;
  }

  get qty => _qty;

  get imgurl => _imgurl;

  set imgurl(value) {
    _imgurl = value;
  }

  get calories => _calories;

  set calories(value) {
    _calories = value;
  }

  set qty(value) {
    _qty = value;
  }
}

class Foods{
  var _id;
  String? _title;
  var _imgurl;
  var _calories;
  var _difficulties;
  var _description;
  var _duration;
  var _author;

  var _isfavorite;
  var ratingstar;
  var category;

  Foods(this._id, this._title, this._imgurl, this._calories, this._difficulties,
      this._description, this._duration, this._isfavorite, this.ingredient,this._author ,{this.ratingstar = 0 ,
  this.category});

  List<Ingredient>? ingredient;

  get author => _author;

  set author(value) {
    _author = value;
  }

  get duration => _duration;

  set duration(value) {
    _duration = value;
  }

  get id => _id;

  set id(value) {
    _id = value;
  }

 String? get title => _title;

  set title(value) {
    _title = value;
  }

  get imgurl => _imgurl;

  set imgurl(value) {
    _imgurl = value;
  }

  get calories => _calories;

  set calories(value) {
    _calories = value;
  }

  get difficulties => _difficulties;

  set difficulties(value) {
    _difficulties = value;
  }





  get isfavorite => _isfavorite;

  set isfavorite(value) {
    _isfavorite = value;
  }

  get description => _description;

  set description(value) {
    _description = value;
  }
}