import 'package:flutter/material.dart';
import "../models/person_model.dart";

class PeopleList extends  StatelessWidget {
  final List<PersonModel> people;

  PeopleList(this.people);

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, int index) {
        return buildPerson(people[index]);
      },
    );
  }
  Widget buildPerson(PersonModel person){
    return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            ),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text("Name: ${person.name}"),
              Text("Gender: ${person.gender}"),
            ],
          ),
        ); 
  }
}