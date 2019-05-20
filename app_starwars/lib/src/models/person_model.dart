
class PersonModel{
  int id;
  String name;
  String gender;
  String homeworld;
  String created; 
  String edited; 
  String url;

  PersonModel(this.id, this.name, this.gender);

  PersonModel.fromJson(Map<String, dynamic> parsedJson){
    id = parsedJson['id'];
    name = parsedJson['name'];
    gender = parsedJson['gender'];
    homeworld = parsedJson['homeworld'];
    created = parsedJson['created'];
    edited = parsedJson['edited'];
    url = parsedJson['url'];
  }
}