class User < ActiveRecord::Base
  has_many :votes

  def voted_for?(feature)
    votes.any? { |v| v.feature_request == feature }
  end
end
