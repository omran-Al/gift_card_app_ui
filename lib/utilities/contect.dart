import 'package:gift_card_app_ui/models/card_model.dart';

extension CardCategoryExtions on CardCategory {
  String captialName() =>
      name[0].toUpperCase() + name.substring(1, name.length).toLowerCase();
}
