class Match
  include Mongoid::Document

  field :reporter_id,     type: Integer
  field :teams,           type: Array
  field :comment,         type: String
  field :type,            type: Integer
  field :game,            type: Integer

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
