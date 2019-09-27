require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game.rb')
require_relative('../card.rb')

class CardGameTest < MiniTest::Test

  def setup
    @card = Card.new('Hearts', 1)
    @card1 = Card.new('Clubs', 3)
    @card2 = Card.new('Diamonds', 2)
    @cards = [@card, @card1, @card2]
  end

  def test_check_for_ace()
    card_game = CardGame.new()
    result = card_game.check_for_ace(@card)
    assert_equal(true, result)
  end

  def test_highest_card()
    card_game = CardGame.new()
    result = card_game.highest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_cards_total()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 6", result)
  end

end
