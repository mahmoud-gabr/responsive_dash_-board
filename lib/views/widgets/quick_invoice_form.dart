import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_botton.dart';
import 'package:responsive_dash_board/views/widgets/custom_drop_down_with_title.dart';
import 'package:responsive_dash_board/views/widgets/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type Item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomDropDownWithTitle(),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomBotton(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomBotton(),
            )
          ],
        )
      ],
    );
  }
}
