
class Customer{
  String _nameSurname;
  int _age;
  int _numberOfPeopleinFamily;
  List _rooms;
  int _howOftenComingGuests;
  int _howManyGuests;
  int _howManyStayOverNight;
  int _howOftenGoOut;
  int _howOftenLaundry;
  bool _schoolUniform;
  bool _makeUp;


  Customer(){}

  void situationPrinter(){
    print("SITUAZIONE");
    print("name surname"+ nameSurname);
    print("age"+ age.toString());
    print("number of people in family"+ numberOfPeopleinFamily.toString());
    print("rooms"+ rooms.toString());
    print("how often coming guests"+ howOftenComingGuests.toString());
    print("how many coming guests"+ howManyGuests.toString());
    print("how many stay over night guests"+ howManyStayOverNight.toString());
    print("how often go out"+ howOftenGoOut.toString());
    print("laundry"+ howOftenLaundry.toString());
    print("school uniform"+ schoolUniform.toString());
    print("make up "+ makeUp.toString());
  }




  int get howManyStayOverNight => _howManyStayOverNight;

  set howManyStayOverNight(int value) {
    _howManyStayOverNight = value;
  }


  String get nameSurname => _nameSurname;

  set nameSurname(String value) {
    _nameSurname = value;
  }

  int get age => _age;

  bool get schoolUniform => _schoolUniform;

  set schoolUniform(bool value) {
    _schoolUniform = value;
  }

  bool get makeUp => _makeUp;

  set makeUp(bool value) {
    _makeUp = value;
  }

  List get rooms => _rooms;

  set rooms(List value) {
    _rooms = value;
  }

  int get howOftenComingGuests => _howOftenComingGuests;

  set howOftenComingGuests(int value) {
    _howOftenComingGuests = value;
  }

  int get howManyGuests => _howManyGuests;

  set howManyGuests(int value) {
    _howManyGuests = value;
  }

  int get numberOfPeopleinFamily => _numberOfPeopleinFamily;

  set numberOfPeopleinFamily(int value) {
    _numberOfPeopleinFamily = value;
  }

  set age(int value) {
    _age = value;
  }

  int get howOftenGoOut => _howOftenGoOut;

  set howOftenGoOut(int value) {
    _howOftenGoOut = value;
  }

  int get howOftenLaundry => _howOftenLaundry;

  set howOftenLaundry(int value) {
    _howOftenLaundry = value;
  }
}