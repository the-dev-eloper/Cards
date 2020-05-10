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

    for(var suit in suits) {

      for(var rank in ranks) {

        var card = new Card(rank, suit);
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
    return card
  }
}