class FeatureRequest < ActiveRecord::Base
  validates_presence_of :title
  has_many :votes

  scope :granted, -> { where(granted: true) }
  scope :waiting, -> { where(granted: false) }
  scope :most_requested, -> {
    waiting.
    select("feature_requests.*, count(votes.id) AS votes_count").
    joins(:votes).
    group("feature_requests.id").
    order("votes_count DESC")
  }

  def vote_count
    votes.count
  end
end
