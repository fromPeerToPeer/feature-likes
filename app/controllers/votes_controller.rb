class VotesController < ApplicationController
  def create
    if feature = FeatureRequest.find(params[:feature_id])
      current_user.votes.create(feature_request: feature)
      redirect_to features_path
    end
  end

  def destroy
  end
end
