import 'package:gift_card_app_ui/models/card_model.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import 'card_repositroy.g.dart';

// @riverpod
// CardRepositry cardRepositry(CardRepositryRef ref) => CardRepositry();

class CardRepositry {
  Future<List<CardModel>> getAllCard() async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return CardModel.sampleCard;
    });
  }

  Future<CardModel> getCard(int cardId) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return CardModel.sampleCard.where((card) => card.id == cardId).first;
    });
  }
}
