class UnconfirmedMatch
  include Mongoid::Document
  include Match

  store_in collection: "unconfirmed_matches"


  def self.validate(params)
    return false if not params[:game].is_a? Integer
    return false if not params[:match_type].is_a? Integer
    return false if params[:teams].any? { |team| team.length <= 0 }
    return false if params[:teams].length >= 11
    return false if params[:teams].any? { |team|
      team.any? { |player|
        not player.is_a? String
      }
    }
    return false if not params[:comment].is_a? String
    return true
  end

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
