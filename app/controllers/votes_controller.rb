class VotesController < ApplicationController
  def create
    if feature = FeatureRequest.find(params[:feature_id])
      current_user.votes.create(feature_request: feature)
      @features = FeatureRequest.most_requested
      respond_to do |format|
        format.js { render partial: 'features/features', status: :created }
        format.html { redirect_to features_path }
      end
    end
  end

  def destroy
    if vote = current_user.votes.where(feature_request_id: params[:feature_id]).first
      vote.destroy
    end
    @features = FeatureRequest.most_requested
    respond_to do |format|
      format.js { render partial: 'features/features' }
      format.html { redirect_to features_path }
    end
  end
end
