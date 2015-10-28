class User < ActiveRecord::Base
  VOTES_ALLOWED = 2

  has_many :votes

  def voted_for?(feature)
    votes.any? { |v| v.feature_request == feature }
  end

  def votes_used
    votes.count
  end

  def votes_remaining
    VOTES_ALLOWED - votes_used
  end

  def can_vote?
    votes_remaining > 0
  end
end
