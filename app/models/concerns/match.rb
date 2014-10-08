module Match
  extend ActiveSupport::Concern

  included do
    field :reporter_id,     type: Integer
    field :teams,           type: Array
    field :comment,         type: String
    field :match_type,      type: Integer
    field :game,            type: Integer
  end
end
