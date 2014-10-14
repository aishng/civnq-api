class User
  include Mongoid::Document

  field :steam_token,     type: Integer
  field :username,        type: String
end
