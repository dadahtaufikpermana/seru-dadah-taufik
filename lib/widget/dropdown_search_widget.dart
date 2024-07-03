import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownSearchWidget extends StatelessWidget {
  final String label;
  final List<String> items;
  final String selectedItem;
  final Function(String?) onChanged;

  const DropdownSearchWidget({
    Key? key,
    required this.label,
    required this.items,
    required this.selectedItem,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: DropdownSearch<String>(
        mode: Mode.BOTTOM_SHEET,
        showSearchBox: true,
        items: items,
        selectedItem: selectedItem,
        onChanged: onChanged,
        dropDownButton: Icon(Icons.keyboard_arrow_down,),
        dropdownSearchDecoration:  InputDecoration(
          hintText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
