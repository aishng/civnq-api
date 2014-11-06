class ConfirmedMatch
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Match

  store_in collection: "confirmed_matches"
end
