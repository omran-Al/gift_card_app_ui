import 'package:flutter/material.dart';
import 'package:gift_card_app_ui/utilities/app_text.dart';

import '../models/card_model.dart';

class CustomGiftCard extends StatelessWidget {
  final CardModel cardModel;
  final double width;
  final bool showLabel;
  final bool showValue;
  final int? value;
  const CustomGiftCard({
    super.key,
    this.value,
    this.showLabel = true,
    this.showValue = false,
    required this.cardModel,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  cardModel.thumbnailPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (showLabel) ...[
              const SizedBox(height: 10),
              AppText.medium(cardModel.name),
            ],
            if (showValue)
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: AppText.large('\$ $value'),
              )
          ],
        ),
      ],
    );
  }
}
