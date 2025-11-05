import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    this.onFilterSelected,
    required this.controller,
  });

  final Color color;
  final VoidCallback? onFilterSelected;
  final CameraController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                color.withOpacity(0.5),
                BlendMode.hardLight,
              ),
              child: CameraPreview(controller),
            ),
          ),
        ),
      ),
    );
  }
}
