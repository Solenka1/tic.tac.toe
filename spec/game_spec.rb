require_relative('../lib/game')
require "rspec"

describe "Game" do
  subject(:game_logic) {Game.new }
  let(:@player2_trn) {[]}
  let(:@player1_trn) {[]}

  
  describe "cal_turns" do
    it "returns sum of arrays" do
      expect(game_logic.cal_turns).to eql([])
    end
  end

  describe "user_position" do
    it "returns true if given number is between 1 & 9" do
      @turns = [5, 9, 2]
      expect(game_logic.user_position(3)).to eq(true)
    end

    it "returns false if given number is not between 1 & 9" do
      @turns = [22, 16]
      expect(game_logic.user_position(24)).to eq(false)  
    end

    it "returns false if given number is between 1 & 9 and included in given array" do
      @turns = [4, 8, 1]
      expect(game_logic.user_position(8)).to eq(false)
    end

    it "returns true if given number is between 1 & 9 and not in given array" do
      @turns = [1, 5, 7]
      expect(game_logic.user_position(3)).to eq(true)
    end

    it "returns false if number given is not integer" do
      expect(game_logic.user_position("girls")).to eq(false)
    end
    
    it "returns false if number < 1" do
      expect(game_logic.user_position(-1)).to eq(false)
    end

    it "returns false if number > 9" do
      expect(game_logic.user_position(12)).to eq(false)
    end
  end
end