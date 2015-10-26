class FeaturesController < ApplicationController
  def index
    @features = FeatureRequest.most_requested
  end
end
