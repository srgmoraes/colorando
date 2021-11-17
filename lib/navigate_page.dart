import 'package:colorando3/config_page.dart';
import 'package:colorando3/library_page.dart';
import 'package:colorando3/mydraws_page.dart';
import 'package:flutter/material.dart';

class NavigatePage extends StatefulWidget {
  @override
  State<NavigatePage> createState() {
    return NavigatePageState();
  }
}

class NavigatePageState extends State<NavigatePage> {

  int _selectedIndex = 0;
  List<String> _title_array = ['Biblioteca', 'Meus desenhos', 'Configurações'];
  List<Widget> _body_array = [LibraryPage(), MyDrawsPage(), ConfigPage()];
  Widget _body = LibraryPage();
  String _title = 'Biblioteca';

  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        _title = _title_array[_selectedIndex];
        _body = _body_array[_selectedIndex];
      });
    }

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: Text(_title)
          ),
          body: _body,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items:
            <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: _title_array[0],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.image),
                label: _title_array[1],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_vintage),
                label: _title_array[2],
              ),
            ],
          ),
        )
    );

  }

}