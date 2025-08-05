import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer Email',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item amount',
                hintText: 'Type Item amount',
              ),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more Details',
                backgroundColor: Colors.white,
                textColor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            const Expanded(
              child: CustomButton(
                text: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
