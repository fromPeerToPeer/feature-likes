class AddVotesCountToFeatureRequests < ActiveRecord::Migration
  def change
    add_column :feature_requests, :votes_count, :integer, :default => 0
  end
end
