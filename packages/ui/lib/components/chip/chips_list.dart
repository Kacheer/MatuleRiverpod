import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/components/chip/chips_provider.dart';
import '../../src/colors.dart';
import 'chips_provider.dart';

class ChipsList extends ConsumerWidget{
  final List<String> categories;

  const ChipsList({super.key, required this.categories});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedChipProvider);
    return Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
    child: Wrap(
      spacing: 8.0,
      children:
        categories.map((category) {
          final isSelected = selectedCategory == category;
          return ChoiceChip(
            
            label: Text(category,
            style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.description
            ),),
            selected: isSelected,
            onSelected: (bool selected) {
              if (selected) {
                ref.read(selectedChipProvider.notifier).update(category);
              }
            },
            color: WidgetStateProperty.all( isSelected ? AppColors.primary : AppColors.inputBg ),
            showCheckmark: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Радиус скругления
                  side: BorderSide(
                    color: isSelected
                        ? AppColors.primary
                        : Colors.transparent, // Цвет рамки
                    width: 0,
                  ),

          ));
        }).toList(),
    ));
  }
}