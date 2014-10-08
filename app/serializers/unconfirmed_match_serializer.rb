class UnconfirmedMatchSerializer < ActiveModel::Serializer
  attributes :match_type, :game, :comment, :teams, :reporter_id

end
