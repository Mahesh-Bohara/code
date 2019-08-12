/**
* Author: MB
**/
import 'package:flutter/material.dart';
class MyClass extends StatefulWidget {

  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  List myListData;
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: streamData,
        builder: (context, snap) { 
          //TODO: implement builder
          
          return Scaffold(
            body: (
              child: Container(
                child: RaisedButton(
                      child: new Text("Search"),
                      onPressed: () {
                         showSearch(context: context, delegate: Search(myListData));
                      }
                 )
              )
            )
          );
        }
    );
  }
}

class Search extends SearchDelegate<String> {
  Search(this.listOfData);
  List<String> listOfData;
  
    @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildAction
  }
  
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
  }
  
  @override
  Widget buildResults(BuildContext context) {
    var searchResult = [];
    listOfData.forEach((data){
      if(data.toLowerCase().contains(query.toLowerCase()) {
          searchResult.add(data);
      }
    });
    
    if(searchResult.length > 0) {
        // TODO: implement search view
    }
    
  }
  
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
  }
  
}
