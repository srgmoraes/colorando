import 'package:colorando3/library_model.dart';
import 'package:flutter/material.dart';

import 'http_service.dart';

class LibraryPage extends StatelessWidget  {

  Widget _buildTitle(Library library) {

    Widget title = ListTile(
      title: Text(library.title ,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      subtitle: Text(library.subtitle),
      leading: CircleAvatar(
        child: Icon(Icons.food_bank, color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
    );

    Widget image = Container(
        height: 200,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1 ,
          children: library.images.map((i) =>
            Center(
              child: Card(
                elevation: 2,
                color: Colors.white,
                child: Container(child: Image.network(i.url), width: 200, height: 200,),
              ),
            )
          ).toList(),

        )
    );

    return Column(children: [title, image]);
  }


  @override
  Widget build(BuildContext context) {

    final HttpService httpService = HttpService();
    Future<List<Library>> librarys = httpService.getLibrary();

    return FutureBuilder(
      future: librarys,
      builder: (BuildContext context, AsyncSnapshot<List<Library>> snapshot) =>

          (snapshot.hasData) ?
            ListView.builder(itemCount: snapshot.data!.length , itemBuilder: (BuildContext context, index) => _buildTitle(snapshot.data![index]))
          :
          Center(child:  CircularProgressIndicator()),


    );

  }

}