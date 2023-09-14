import 'package:flutter/material.dart';
import 'package:ostello/universal/custom_service_button.dart';

class TextFieldSuffixButtons extends StatelessWidget {
  const TextFieldSuffixButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const VerticalDivider(width: 0.6, color: Color(0xffCFCFCF)),
            const SizedBox(width: 8),
            const CustomerServiceButton(),
            const SizedBox(width: 8),
            GestureDetector(onTap: () {}, child: const Icon(Icons.mic_none)),
            const SizedBox(width: 12)
          ]);
}
