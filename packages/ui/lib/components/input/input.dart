import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/input/input_provider.dart';
import 'package:ui/ui.dart';

class CustomInput extends ConsumerStatefulWidget {
  final String hintText;

  const CustomInput({super.key, required this.hintText});

  @override
  ConsumerState<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends ConsumerState<CustomInput> {
  late TextEditingController _controller;

  @override 
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override 
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputText =  ref.watch(inputProviderProvider);
    
    return SizedBox(
      height: 48,
      child: TextField(
      controller: _controller,
      cursorWidth: 2,
      cursorColor: AppColors.primary,
      
      onChanged: (value) => ref.read(inputProviderProvider.notifier).update(value),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        prefixIconColor: AppColors.description,
        hintStyle: GoogleFonts.robotoFlex(
          color: Color(0xFF9E9E9E),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        focusColor: AppColors.primary,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.inputStroke,
          ),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.inputStroke,
          ),
        ),
        
        hintText: widget.hintText,
        suffixIcon: inputText.trim().isNotEmpty ? IconButton (
          icon: Icon(Icons.close),
          onPressed: () {
            _controller.clear();
            ref.read(inputProviderProvider.notifier).clear();
          }
        ) : null,
      )
    ),
    );
  }
}