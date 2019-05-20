import "package:flutter/material.dart";
import 'package:http/http.dart' show get;
import "models/person_model.dart";
import "dart:convert";
import "widgets/people_list.dart";

class App extends StatefulWidget{
  createState(){
    return AppState();
  }

}

class AppState extends State<App>{
 int counter = 0;
 List<PersonModel> people = [];

 fetchPerson() async {
   counter++;
   var response = await get('https://swapi.co/api/people/$counter');
   var imageModel = PersonModel.fromJson(json.decode(response.body));
   
   setState((){
     people.add(imageModel);
   });
 }
 
 Widget build(context){
   return  MaterialApp(
    home: Scaffold(
      body: PeopleList(people),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: fetchPerson,
          ),
        appBar : AppBar(
        title: Text('Come to the Force'),
      ),
    ),
  );
 }
}