import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomDropDownWithTitle extends StatefulWidget {
  const CustomDropDownWithTitle({super.key});

  @override
  State<CustomDropDownWithTitle> createState() =>
      _CustomDropDownWithTitleState();
}

class _CustomDropDownWithTitleState extends State<CustomDropDownWithTitle> {
  String selectedValue = 'USD';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Item mount',
          style: AppStyle.styleMeduim16,
        ),
        const SizedBox(
          height: 12,
        ),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
          ),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          icon: Transform.rotate(
            angle: 1.5708,
            child: const Icon(Icons.arrow_forward_ios_sharp),
          ),
          iconEnabledColor: const Color(0xff064061),
          iconSize: 20,
          items: ['USD', 'EGP', 'EUR'].map(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    value,
                    style: AppStyle.styleRegulare16.copyWith(
                      color: const Color(0xffAAAAAA),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
