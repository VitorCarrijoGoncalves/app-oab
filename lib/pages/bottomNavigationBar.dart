import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

BottomNavigationBar getButtonsNavigationBar() {
return BottomNavigationBar(
  showSelectedLabels: false,
  showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.facebook),
            label: 'Facebook',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.twitter),
            label: 'Twitter',
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.instagram),
            label: 'Instagram',
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.flickr),
            label: 'Flickr',
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.youtube),
            label: 'Youtube',
            //backgroundColor: Colors.blue,
          ),
          //botto
        ],
        currentIndex: 0,
        //selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      );
}









