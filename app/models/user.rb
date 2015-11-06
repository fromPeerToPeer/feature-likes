class User < ActiveRecord::Base
  VOTES_ALLOWED = 2

  has_many :votes

  def has_voted_for?(feature)
    votes.any? { |v| v.feature_request == feature }
  end

  def has_not_voted_for?(feature)
    !has_voted_for?(feature)
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

  def cannot_vote?
    !can_vote?
  end
end
