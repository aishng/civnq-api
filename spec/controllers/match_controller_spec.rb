require 'spec_helper'

describe MatchController do
  describe 'show' do
    before(:each) do
      get "/matches"
    end
    it { response.body.should == 5 }
  end
end

