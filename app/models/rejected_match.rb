class RejectedMatch
  include Mongoid::Document
  include Match

  store_in collection: "rejected_matches"

end
