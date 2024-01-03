import 'package:flutter/material.dart';

class EditorPreview extends StatelessWidget {
  const EditorPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(''),
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Inner padding
              child: TextButton.icon(
                onPressed: () {},
                label: const Text('Edit'),
                icon: const Icon(Icons.edit),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
          ),
          const SizedBox(width: 16.0), // Gap between buttons

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton.icon(
                onPressed: () {},
                label: const Text('Preview'),
                icon: const Icon(Icons.preview),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
