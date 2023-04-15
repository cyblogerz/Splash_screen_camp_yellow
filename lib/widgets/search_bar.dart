
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:13.0),
      child: TextField(
    
                     decoration: InputDecoration(
                       
                       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12.0),
         ),
                       labelText: "Search events by area",
                       suffixIcon: Icon(Icons.search)
                     ),
                   ),
    );
  }
}