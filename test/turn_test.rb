require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require 'pry'

class TurnTest < Minitest::Test
    def test_it_exists
        card = Card.new("Whats my name", "Rumpelstilskin", :Trivia)
        turn = Turn.new("someString", card)
        assert_instance_of Turn, turn
    end

    def test_guess
        card = Card.new("Whats my name", "Rumpelstilskin", :Trivia)
        turn = Turn.new("someString", card)
        assert_equal "someString", turn.guess
    end

    def test_card
      card = Card.new("Whats my name", "Rumpelstilskin", :Trivia)
      turn = Turn.new("someString", card)
      assert_equal card, turn.card
    end

    def test_answer_correct_feedback
      card = Card.new("Whats my name", "Rumpelstilskin", :Trivia)
      turn = Turn.new("someString", card)
      assert_equal "Sorry..", turn.feedback
    end

    def test_answer_correct
      card = Card.new("Whats my name", "Rumpelstilskin", :Trivia)
      turn = Turn.new("someString", card)
      assert_equal false, turn.correct?
    end
  end
    