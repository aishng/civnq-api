class Match
  include Mongoid::Document

  field :reporter_id,     type: Integer
  field :teams,           type: Array
  field :comment,         type: String
  field :type,            type: String
  field :game,            type: String

end
