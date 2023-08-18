import 'package:flutter/material.dart';

class ValidationInput extends StatelessWidget {
  const ValidationInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary)),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.inversePrimary)),
      ),
    );
  }
}
