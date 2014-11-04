require 'spec_helper'

describe User do

  describe ".strip_id" do
    subject       { User.strip_id(url) }
    let(:url)     { "http://steamcommunity.com/openid/id/76561198041307793" }

    it { should == 76561198041307793 }
  end
end
