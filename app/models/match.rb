class Match
  include Mongoid::Document

  field :reporter_id,     type: Integer
  field :teams,           type: Hash
  field :comment,         type: String
  field :type,            type: Integer
  field :game,            type: Integer

end
