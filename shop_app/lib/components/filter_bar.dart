import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({Key? key}) : super(key: key);

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  final List<String> filters = const [
    "All",
    "Laptop",
    "Shoe",
    "Watch",
    "Mobile"
  ];

  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedFilter = filter;
                });
              },
              child: Chip(
                backgroundColor: selectedFilter == filter
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromRGBO(245, 247, 249, 1),
                side: const BorderSide(style: BorderStyle.none),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide.none),
                label: Text(filter),
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: selectedFilter == filter
                      ? Theme.of(context).colorScheme.onPrimary
                      : const Color.fromRGBO(0, 0, 0, 1), // Replace with your default text color
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
              ),
            ),
          );
        },
      ),
    );
  }
}