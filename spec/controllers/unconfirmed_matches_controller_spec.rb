require 'spec_helper'

describe UnconfirmedMatchesController do

  describe "#reject" do

    describe "for an unconfirmed match that exists" do
      let(:match_id)  { 10 }

      it "should move an unconfirmed match to rejected matches" do
        UnconfirmedMatch.create(id: match_id, game: 0)
        UnconfirmedMatch.count.should == 1
        post "reject", { id: match_id }
        UnconfirmedMatch.count.should == 0
        RejectedMatch.count.should == 1
      end
    end

    describe "for an unconfirmed match that does not exist" do
      let(:match_id)  { 1 }

      it "should return an error" do
        post "reject", { id: match_id }
      end
    end
  end
end
