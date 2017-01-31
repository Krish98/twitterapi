class Tweet
  include Mongoid::Document
  field :tweet, type: String
  field :uname, type: String
end
