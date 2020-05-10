void main() {
  var deck = new Deck();

  deck.removeCard('Diamonds', 'Ace');
  print(deck);
}

class Deck() {

  List<Card> cards = [];

  Deck() {

    var ranks = ['ace', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'king', 'queen', 'jack'];
    var suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs'];

    for(var mySuit in suits) {

      for(var rank in ranks) {

        var card = new Card(
          suit: mySuit,
          rank: rank
        );

        cards.add(card);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {

    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String suit, String rank) {

    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

class Card() {

  String suit;
  String rank;

  Card({this.rank, this.suit});

  toString() {
    return '$rank of $suit';
  }
}