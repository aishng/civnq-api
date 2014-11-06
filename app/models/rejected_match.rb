class RejectedMatch
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Match

  store_in collection: "rejected_matches"

end
