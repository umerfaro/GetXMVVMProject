import 'package:flutter/material.dart';



class IconFactory
{
  static Icon getIcon(String iconName) {
    switch (iconName) {
      case 'email':
        return Icon(Icons.email);
      case 'password':
        return Icon(Icons.lock);
      case 'phone':
        {
          return Icon(Icons.phone);
        }
        case 'Username':
        return Icon(Icons.person);
        case 'search':
        return Icon(Icons.search);
        case 'Title':
        return Icon(Icons.title);
        case 'Description':
        return Icon(Icons.description);
        case 'bio':
        return Icon(Icons.personal_injury_outlined);
    // Add more cases for different icon names
      default:
        return Icon(Icons.error); // Default icon if name doesn't match
    }
  }
}