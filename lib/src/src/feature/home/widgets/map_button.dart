import 'package:flutter/material.dart';

import 'map/map_module.dart';

class MapButton extends StatefulWidget {
  const MapButton({super.key});

  @override
  State<MapButton> createState() => _MapButtonState();
}

class _MapButtonState extends State<MapButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          builder: (context) => MapModule(),
        );
      },
      child: Icon(Icons.flood_outlined),
    );
  }
}
