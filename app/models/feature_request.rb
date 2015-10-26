class FeatureRequest < ActiveRecord::Base
  validates_presence_of :title
  has_many :votes

  scope :granted, -> { where(granted: true) }
  scope :waiting, -> { where(granted: false) }

  def vote_count
    votes.count
  end
end
