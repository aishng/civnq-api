class User
  include Mongoid::Document

  def self.strip_id(url)
    url.split("/").last.to_i
  end

  field :steamid,       type: Integer
  field :username,      type: String
end
