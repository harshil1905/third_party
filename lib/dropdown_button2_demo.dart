import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropdownbuttonDemo extends StatefulWidget {
  const DropdownbuttonDemo({super.key});

  @override
  State<DropdownbuttonDemo> createState() => _DropdownbuttonDemoState();
}

class _DropdownbuttonDemoState extends State<DropdownbuttonDemo> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: const Row(
                children: [
                  Icon(
                    Icons.list,
                    size: 16,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(
                  () {
                    selectedValue = value as String;
                  },
                );
              },
              buttonStyleData: ButtonStyleData(
                height: 50,
                width: 160,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.redAccent,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconDisabledColor: Colors.grey,
                iconEnabledColor: Colors.amber,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 300,
                width: 200,
                padding: null,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.redAccent,
                ),
                elevation: 8,
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(3),
                  thickness: MaterialStateProperty.all<double>(8),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.only(left: 14, right: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
