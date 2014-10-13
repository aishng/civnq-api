require 'spec_helper'

describe UnconfirmedMatch do

  describe ".validate" do
    subject             { UnconfirmedMatch.validate(params) }
    let(:params)        { { game: game, match_type: match_type, teams: teams, comment: comment } }
    let(:game)          { 0 }
    let(:match_type)    { 0 }
    let(:teams)         { [ [ 0 ], [ 1 ] ] }
    let(:comment)      { "That thiiing" }

    describe "for valid parameters" do

      it "should return true" do
        subject.should be_true
      end
    end

    describe "for a non integral game" do
      let(:game) { "CivV" }

      it "should return false" do
        subject.should be_false
      end
    end


    describe "for a non integral match_type" do
      let(:match_type) { "FFA" }

      it "should return false" do
        subject.should be_false
      end
    end


    describe "for teams" do

      describe "for any team that has zero players" do
        let(:teams) { [ [], [] ] }

        it "should return false" do
          subject.should be_false
        end
      end

      describe "for more than 10 teams" do
        let(:teams) { [ [0], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10] ] }

        it "should return false" do
          subject.should be_false
        end
      end


      describe "if any team has an invalid player id" do
        let(:teams) { [ ["ashley"], [2] ] }

        it "should return false" do
          subject.should be_false
        end
      end
    end


    describe "for comments" do
      let(:comment) { 1234 }

      it "should be a string" do
        subject.should be_false
      end
    end
  end
end
