class RejectedMatchSerializer < ActiveModel::Serializer
  attributes :id, :match_type, :game, :comment, :teams, :reporter_id

  def id
    object.id.to_s
  end

end
