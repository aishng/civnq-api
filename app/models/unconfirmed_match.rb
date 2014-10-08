class UnconfirmedMatch
  include Mongoid::Document
  include Match

  store_in collection: "unconfirmed_matches"

  module MatchType
    FFA     = 0
    Duel    = 1
    Teamer  = 2
  end

  module GameType
    CivV    = 0
    CivBE   = 1
  end
end
